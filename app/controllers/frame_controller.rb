class FrameController < ApplicationController
  before_action :authenticate_user!
  def agregarOferta
    @offer = Offer.new
  end

  def categorias
    @categories = Category.all
  end

  def estadoSolicitud
  end

  def historial
  end

  def inicio
  end

  def perfilPrivado
  end

  def perfilPublico
  end

  def solicitudesPend
  end

  def verDetallesOferta
  end

  def verOfertas       
     @cate = params[:cate]     
     @ver_oferta_categoria = Offer.where(:category_id =>@cate)
     @ver_oferta_todas = Offer.all   
     @request = Request.new       
     @userRequest = Request.where(:user_id => current_user.id)
  end
end
