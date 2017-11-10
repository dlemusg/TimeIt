class FrameController < ApplicationController
  before_action :authenticate_user!
  def agregarOferta

    @offer = Offer.new
    @userRequest = Request.where(:user_id => current_user.id)
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @request = Request.new       
    
  end

  def categorias
    @categories = Category.all
    @offer = Offer.new
    @userRequest = Request.where(:user_id => current_user.id)
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @request = Request.new       
    
  end 

  def historial
    @offer = Offer.new
    @userRequest = Request.where(:user_id => current_user.id)
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @request = Request.new       
    
  end

  def inicio
    @offer = Offer.new
    @userRequest = Request.where(:user_id => current_user.id)
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @request = Request.new       
    
  end

  def verMisOfertas
    @offer = Offer.new
    @userRequest = Request.where(:user_id => current_user.id)
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    if @userRequest != nil
      @ver_oferta_todas2 = Offer.where(:user_id => current_user.id)
    end
    @ver_oferta_unicas = Offer.where(:user_id => current_user.id).reverse
    @request = Request.new       
    
  end

  def verDetallesOferta
  end
 
  def verOfertas  
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
     
  end
 
  def perfilPublico
    @user = params[:users]
    @ver_perfil_publico = User.where(:id => @user)
    @ofid = params[:offers]
    @request = Request.new  
    @offer = Offer.find_by_id(@ofid)
    @ofcategory = Offer.where(:category_id => @offer.category_id)
                       .where.not(:user_id => current_user,:id => @offer.id).limit(3).reverse
    if @ofcategory.size < 3
      @ofcategory = Offer.where.not(:user_id => current_user,:id => @offer.id).limit(3).reverse
    end
  end



  def perfilPublicoCompleto
    @user = params[:users]
    @ver_perfil_publico = User.where(:id => @user)
    @oferta_publica = Offer.where(:user_id => @user)
  end

  def contract
    @offer_c = Offer.where(user_id: current_user)
    @contract_o = Contract.where(offer_id: @offer_c)
    @user_cliente = Contract.where(user_id: current_user)
    @user_ofertante = Contract.where(id: @contract_o)
    @offer_cliente = @user_clinete.offer_id
    @oferta_completa = Offer.where(id: @offer_cliente)
    @oferta_usuario = User.where(id: @offer_cliente.user_id)
  end
end
