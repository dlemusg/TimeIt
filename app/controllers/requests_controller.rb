class RequestsController < InheritedResources::Base
 
  def new
    @request = Request.new
  end

  # POST /offers
  # POST /offers.json
  def create
    @request= Request.new(request_params)
    @ver_oferta_categoria = Offer.where(:category_id =>@cate).reverse
    respond_to  do |format|
      if @request.save
          format.html
          format.json { render :show, status: :created, location: @request}

      else
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def request_params
      params.require(:request).permit(:user_id, :offer_id)
    end
end

