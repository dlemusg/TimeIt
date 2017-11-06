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
    @offer = Offer.where(:id => @ofid)
  end



  def perfilPublicoCompleto
    @user = params[:users]
    @ver_perfil_publico = User.where(:id => @user)
    @oferta_publica = Offer.where(:user_id => @user)
  end


end
