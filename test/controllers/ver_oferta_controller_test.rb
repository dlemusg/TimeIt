require 'test_helper'

class VerOfertaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ver_ofertum = ver_oferta(:one)
  end

  test "should get index" do
    get ver_oferta_url
    assert_response :success
  end

  test "should get new" do
    get new_ver_ofertum_url
    assert_response :success
  end

  test "should create ver_ofertum" do
    assert_difference('VerOfertum.count') do
      post ver_oferta_url, params: { ver_ofertum: { categoria: @ver_ofertum.categoria, descripcion: @ver_ofertum.descripcion, imagen: @ver_ofertum.imagen, nombre: @ver_ofertum.nombre, valor: @ver_ofertum.valor } }
    end

    assert_redirected_to ver_ofertum_url(VerOfertum.last)
  end

  test "should show ver_ofertum" do
    get ver_ofertum_url(@ver_ofertum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ver_ofertum_url(@ver_ofertum)
    assert_response :success
  end

  test "should update ver_ofertum" do
    patch ver_ofertum_url(@ver_ofertum), params: { ver_ofertum: { categoria: @ver_ofertum.categoria, descripcion: @ver_ofertum.descripcion, imagen: @ver_ofertum.imagen, nombre: @ver_ofertum.nombre, valor: @ver_ofertum.valor } }
    assert_redirected_to ver_ofertum_url(@ver_ofertum)
  end

  test "should destroy ver_ofertum" do
    assert_difference('VerOfertum.count', -1) do
      delete ver_ofertum_url(@ver_ofertum)
    end

    assert_redirected_to ver_oferta_url
  end
end
