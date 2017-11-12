class ContractsController < ApplicationController

  def new
    @contract = Contract.new
  end
  
  def show
    @contract = Contract.find_by_id(params[:id])
  end

  def update
    @contract = Contract.find_by_id(params[:id])
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract}
        format.json { render :show, status: :ok, location: @contract }
      else
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @contract = Contract.find_by_id(params[:id])
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to frame_inicio_path }
      format.json { head :no_content }
    end
  end

  def create
    @contract = Contract.new(contract_params)
    respond_to  do |format|
      if @contract.save
        format.html { redirect_to @contract }
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

