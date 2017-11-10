class ContractsController < InheritedResources::Base

  def new
    @contract = Contract.new
  end

  # POST /offers
  # POST /offers.json
  def create
    @contract= Contract.new(request_params)
    respond_to  do |format|
      if @contract.save
        format.html
        format.json { render :show, status: :created, location: @contract}
        format.js

      else
        format.json { render json: @contract.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  private

    def contract_params
      params.require(:contract).permit()
    end
end

