class ContractsController < InheritedResources::Base

  def new
    @contract = Contract.new
  end

  def create
    @contract= Contract.new(contract_params)
    respond_to  do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @contract}
      else
        format.json { render json: @contract.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  private
    def contract_params
      params.require(:contract).permit(:value,:user_id, :offer_id,:comments)
    end
end

