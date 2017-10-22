class RequestsController < InheritedResources::Base
 
  def new
    @request = Request.new
  end

  # POST /offers
  # POST /offers.json
  def create
    @request= Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @request}
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def request_params
      params.require(:request).permit(:user_id, :offer_id)
    end
end

