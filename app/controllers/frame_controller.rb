class FrameController < ApplicationController
  before_action :authenticate_user!


  def agregarOferta

    @offer = Offer.new
    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)

    @userRequest = Request.where(:user_id => current_user.id)
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @request = Request.new

    @este = Offer.where(user_id: current_user.id)

  end

  def categorias
    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)
    @categories = Category.all
    @offer = Offer.new

    @userRequest = Request.where(:user_id => current_user.id)

    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @request = Request.new

    @este = Offer.where(user_id: current_user.id)
    @este2 = Contract.where(offer_id: @este.id)
  end 

  def historial
    @contract_o = Contract.where(offer_id: @offer_c)


    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)

    @offer = Offer.new
    @userRequest = Request.where(:user_id => current_user.id)
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @request = Request.new


    @este = Offer.where(user_id: current_user.id)
    @este2 = Contract.where(offer_id: @este.id)
  end

  def inicio
    @offer = Offer.new
    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)

    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @request = Request.new



    @este = Offer.where(user_id: current_user.id)


  end

  def verMisOfertas
    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)
    @offer = Offer.new
    @userRequest = Request.where(:user_id => current_user.id)

    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @ver_oferta_unicas = Offer.where(:user_id => current_user.id).reverse
    @request = Request.new


    @este = Offer.where(user_id: current_user.id)
    @este2 = Contract.where(offer_id: @este.id)
  end

  def verDetallesOferta
    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)
  end
 
  def verOfertas
    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)

    @id_notif = params[:requests]    
    @nom_notif = params[:users] 
    @ofer_notif = params[:offers]  
    @cate = params[:cate]
    @userRequest = Request.where(:user_id => current_user.id)
    @ver_oferta_categoria = Offer.where(:category_id =>@cate).reverse
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse

    if @userRequest != nil
       @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
     @request = Request.new


    @este = Offer.where(user_id: current_user.id)
    @este2 = Contract.where(offer_id: @este.id)
  end
 
  def perfilPublico
    @contract_o = Contract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)

    @user = params[:users]
    @ver_perfil_publico = User.where(:id => @user)
    @ofid = params[:offers]
    @request = Request.new
    @ofcategory = Offer.where(:category_id => @offer.category_id)
                      .where.not(:user_id => current_user,:id => @offer.id).limit(3).reverse
    if @ofcategory.size < 3
      @ofcategory = Offer.where.not(:user_id => current_user,:id => @offer.id).limit(3).reverse

    end
  end
  def perfilPublicoCompleto
    @contract_o = Cosntract.where(offer_id: @offer_c)

    @oferta_solicitada = Offer.where(id: @offerta_id)

    @user_ofertante = Contract.where(id: @contract_o)
    @oferta_completa = Offer.where(id: @offer_cliente)
    @userRequestOffer = Request.where(user_id = (current_user.id).to_s)
    @userRequest = Request.where(:user_id => current_user.id)
    @user_cliente = Contract.where(user_id: current_user)
    @user = params[:users]
    @ver_perfil_publico = User.where(:id => @user)
    @oferta_publica = Offer.where(:user_id => @user)

  end

end
