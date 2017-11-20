require 'test_helper'

class CriterioestadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @criterioestado = criterioestados(:one)
  end

  test "should get index" do
    get criterioestados_url
    assert_response :success
  end

  test "should get new" do
    get new_criterioestado_url
    assert_response :success
  end

  test "should create criterioestado" do
    assert_difference('Criterioestado.count') do
      post criterioestados_url, params: { criterioestado: { criterio_id: @criterioestado.criterio_id, estado_id: @criterioestado.estado_id } }
    end

    assert_redirected_to criterioestado_url(Criterioestado.last)
  end

  test "should show criterioestado" do
    get criterioestado_url(@criterioestado)
    assert_response :success
  end

  test "should get edit" do
    get edit_criterioestado_url(@criterioestado)
    assert_response :success
  end

  test "should update criterioestado" do
    patch criterioestado_url(@criterioestado), params: { criterioestado: { criterio_id: @criterioestado.criterio_id, estado_id: @criterioestado.estado_id } }
    assert_redirected_to criterioestado_url(@criterioestado)
  end

  test "should destroy criterioestado" do
    assert_difference('Criterioestado.count', -1) do
      delete criterioestado_url(@criterioestado)
    end

    assert_redirected_to criterioestados_url
  end
end
