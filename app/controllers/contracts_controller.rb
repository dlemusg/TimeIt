class ContractsController < ApplicationController



  def new
    @contract = Contract.new
  end
  
  def show
    @contract = Contract.find_by_id(params[:id])
  end
  
  def destroy

    @contract = Contract.find_by_id(params[:id])
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to frame_inicio_path, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create
    @contract = Contract.new(contract_params)
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

