class FrameController < ApplicationController
  before_action :authenticate_user!
  def agregarOferta
    @offer = Offer.new
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id)
    @request = Request.new       
    @userRequest = Request.where(:user_id => current_user.id)
  end

  def categorias
    @categories = Category.all
    @offer = Offer.new
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id)
    @request = Request.new       
    @userRequest = Request.where(:user_id => current_user.id)
  end 

  def historial
    @offer = Offer.new
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id)
    @request = Request.new       
    @userRequest = Request.where(:user_id => current_user.id)
  end

  def inicio
    @offer = Offer.new
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    @request = Request.new       
    @userRequest = Request.where(:user_id => current_user.id).reverse
  end

  def verMisOfertas
    @offer = Offer.new
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id).reverse
    @ver_oferta_unicas = Offer.where(:user_id => current_user.id).reverse
    @request = Request.new       
    @userRequest = Request.where(:user_id => current_user.id).reverse
  end

  def verDetallesOferta
  end
 
  def verOfertas  
     @id_notif = params[:id_notif]    
     @nom_notif = params[:nom_notif] 
     @ofer_notif = params[:ofer_notif]  
     @cate = params[:cate]     
     @ver_oferta_categoria = Offer.where(:category_id =>@cate)
     @ver_oferta_todas = Offer.where.not(:user_id => current_user.id)
     @request = Request.new       
     @userRequest = Request.where(:user_id => current_user.id)
  end

 
  def perfilPublico
    @user = params[:users]
    @ver_perfil_publico = User.where(:id => @user)
  end

  def perfilPublicoCompleto
    @user = params[:users]
    @ver_perfil_publico = User.where(:id => @user)
  end


end
