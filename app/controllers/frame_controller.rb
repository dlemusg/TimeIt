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
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id)
    @request = Request.new       
    @userRequest = Request.where(:user_id => current_user.id)
  end

  def verDetallesOferta
    @offer = Offer.new
    @ver_oferta_todas = Offer.where.not(:user_id => current_user.id)
    @ver_oferta_unicas = Offer.where(:user_id => current_user.id)
    @request = Request.new       
    @userRequest = Request.where(:user_id => current_user.id)
  end
 
  def verOfertas       
     @cate = params[:cate]     
     @ver_oferta_categoria = Offer.where(:category_id =>@cate)
     @ver_oferta_todas = Offer.where.not(:user_id => current_user.id)
     @request = Request.new       
     @userRequest = Request.where(:user_id => current_user.id)
  end
end
