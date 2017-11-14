class ContractsController < ApplicationController

  def new
    @contract = Contract.new
  end
  
  def show
    @contract = Contract.find_by_id(params[:id])
  end

  def update
    @contract = Contract.find_by_id(params[:id])
    @user = User.find(@contract.user_id)
    if params[:contract][:value].to_i <= @user.time
      respond_to do |format|
        if @contract.update(contract_params)
          @user.update_attribute(:time,@user.time - params[:contract][:value].to_i )
          format.html { redirect_to @contract}
          format.json { render :show, status: :ok, location: @contract }
        else
          format.json { render json: @offer.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to @contract
    end
  end

  def aceptar
    @contract = Contract.find_by_id(params[:id])
    @contract.update_attribute(:state, 1)
    respond_to do |format|
      format.html { redirect_to @contract }
      format.json { head :no_content }
    end
  end

  def finalizando
    @contract = Contract.find_by_id(params[:id])
    if @contract.state == 1
      @contract.update_attribute(:state, 2)
    elsif @contract.state == 2
      @user = User.find(@contract.offer.user_id)
      @user.update_attribute(:time,@user.time + @contract.value )
      @contract.update_attribute(:state, 3)
    end
    respond_to do |format|
      format.html { redirect_to @contract }
      format.json { head :no_content }
    end
  end
  
  def destroy
    @contract = Contract.find_by_id(params[:id])
    if @contract.value > 0
      @user = User.find(@contract.user_id)
      @user.update_attribute(:time,@user.time + @contract.value)
    end


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
      params.require(:contract).permit(:value,:user_id, :offer_id,:comments, :state)
    end
end

