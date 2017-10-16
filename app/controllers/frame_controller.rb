class FrameController < ApplicationController
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

  def registro
  end

  def solicitudesPend
  end

  def verDetallesOferta
  end

  def verOfertas       
     @cate = params[:cate]     
     @offer_categories = OfertCategory.where(:idCategoria => @cate)
     @ver_oferta = Offer.all
  end
end
