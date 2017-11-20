require 'test_helper'

class EsparamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @esparam = esparams(:one)
  end

  test "should get index" do
    get esparams_url
    assert_response :success
  end

  test "should get new" do
    get new_esparam_url
    assert_response :success
  end

  test "should create esparam" do
    assert_difference('Esparam.count') do
      post esparams_url, params: { esparam: { name: @esparam.name, tipoestado_id: @esparam.tipoestado_id } }
    end

    assert_redirected_to esparam_url(Esparam.last)
  end

  test "should show esparam" do
    get esparam_url(@esparam)
    assert_response :success
  end

  test "should get edit" do
    get edit_esparam_url(@esparam)
    assert_response :success
  end

  test "should update esparam" do
    patch esparam_url(@esparam), params: { esparam: { name: @esparam.name, tipoestado_id: @esparam.tipoestado_id } }
    assert_redirected_to esparam_url(@esparam)
  end

  test "should destroy esparam" do
    assert_difference('Esparam.count', -1) do
      delete esparam_url(@esparam)
    end

    assert_redirected_to esparams_url
  end
end
