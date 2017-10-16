require 'test_helper'

class FrameControllerTest < ActionDispatch::IntegrationTest
  test "should get añadirOferta" do
    get frame_añadirOferta_url
    assert_response :success
  end

  test "should get categorias" do
    get frame_categorias_url
    assert_response :success
  end

  test "should get estadoSolicitud" do
    get frame_estadoSolicitud_url
    assert_response :success
  end

  test "should get historial" do
    get frame_historial_url
    assert_response :success
  end

  test "should get inicio" do
    get frame_inicio_url
    assert_response :success
  end

  test "should get perfilPrivado" do
    get frame_perfilPrivado_url
    assert_response :success
  end

  test "should get perfilPublico" do
    get frame_perfilPublico_url
    assert_response :success
  end

  test "should get registro" do
    get frame_registro_url
    assert_response :success
  end

  test "should get solicitudesPend" do
    get frame_solicitudesPend_url
    assert_response :success
  end

  test "should get verDetallesOferta" do
    get frame_verDetallesOferta_url
    assert_response :success
  end

  test "should get verOfertas" do
    get frame_verOfertas_url
    assert_response :success
  end

end
