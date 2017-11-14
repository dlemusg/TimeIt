class OffersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  # GET /offers
  # GET /offers.json
  def index
    search = params[:term].present? ? params[:term] : nil
    @offers = if search
                Offer.search(search, where: { user_id: { not: current_user.id }})
              else
                Offer.all
              end
    @request = Request.new
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id)
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)
    @user = params[:users]
    @ver_perfil_publico = User.where(:id => @user)
    @oferta_publica = Offer.where(:user_id => @user)
    @este = Offer.where(user_id: current_user.id)
  end

  # GET /offers/new
  def new
    @offer = Offer.new
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = current_user.offers.new(offer_params)

    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    if current_user.id == @offer.user_id
      respond_to do |format|
        if @offer.update(offer_params)
          format.html { redirect_to @offer}
          format.json { render :show, status: :ok, location: @offer }
        else
          format.html { render :edit }
          format.json { render json: @offer.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to "frame#inicio" 
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url }
      format.json { head :no_content }
    end
  end

  def eliminar
    @offer_id = params[:offer_id]
    @offer = Offer.find(@offer_id)
    @offer.update_attribute(:state, "desactivado")
    @request = Request.where(offer_id: @offer.id)
    @request.each do |r|
      r.destroy
    end
    redirect_to frame_verMisOfertas_path


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
        params.require(:offer).permit(:name,'category_id', :description, :picture, :state)
    end
end
