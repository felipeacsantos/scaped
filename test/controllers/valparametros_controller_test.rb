require 'test_helper'

class ValparametrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valparametro = valparametros(:one)
  end

  test "should get index" do
    get valparametros_url
    assert_response :success
  end

  test "should get new" do
    get new_valparametro_url
    assert_response :success
  end

  test "should create valparametro" do
    assert_difference('Valparametro.count') do
      post valparametros_url, params: { valparametro: { parametro_id: @valparametro.parametro_id, valor: @valparametro.valor } }
    end

    assert_redirected_to valparametro_url(Valparametro.last)
  end

  test "should show valparametro" do
    get valparametro_url(@valparametro)
    assert_response :success
  end

  test "should get edit" do
    get edit_valparametro_url(@valparametro)
    assert_response :success
  end

  test "should update valparametro" do
    patch valparametro_url(@valparametro), params: { valparametro: { parametro_id: @valparametro.parametro_id, valor: @valparametro.valor } }
    assert_redirected_to valparametro_url(@valparametro)
  end

  test "should destroy valparametro" do
    assert_difference('Valparametro.count', -1) do
      delete valparametro_url(@valparametro)
    end

    assert_redirected_to valparametros_url
  end
end
