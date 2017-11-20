require 'test_helper'

class TipoestadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipoestado = tipoestados(:one)
  end

  test "should get index" do
    get tipoestados_url
    assert_response :success
  end

  test "should get new" do
    get new_tipoestado_url
    assert_response :success
  end

  test "should create tipoestado" do
    assert_difference('Tipoestado.count') do
      post tipoestados_url, params: { tipoestado: { descricao: @tipoestado.descricao } }
    end

    assert_redirected_to tipoestado_url(Tipoestado.last)
  end

  test "should show tipoestado" do
    get tipoestado_url(@tipoestado)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipoestado_url(@tipoestado)
    assert_response :success
  end

  test "should update tipoestado" do
    patch tipoestado_url(@tipoestado), params: { tipoestado: { descricao: @tipoestado.descricao } }
    assert_redirected_to tipoestado_url(@tipoestado)
  end

  test "should destroy tipoestado" do
    assert_difference('Tipoestado.count', -1) do
      delete tipoestado_url(@tipoestado)
    end

    assert_redirected_to tipoestados_url
  end
end
