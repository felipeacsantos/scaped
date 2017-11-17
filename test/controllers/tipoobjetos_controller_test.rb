require 'test_helper'

class TipoobjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipoobjeto = tipoobjetos(:one)
  end

  test "should get index" do
    get tipoobjetos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipoobjeto_url
    assert_response :success
  end

  test "should create tipoobjeto" do
    assert_difference('Tipoobjeto.count') do
      post tipoobjetos_url, params: { tipoobjeto: { descricao: @tipoobjeto.descricao } }
    end

    assert_redirected_to tipoobjeto_url(Tipoobjeto.last)
  end

  test "should show tipoobjeto" do
    get tipoobjeto_url(@tipoobjeto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipoobjeto_url(@tipoobjeto)
    assert_response :success
  end

  test "should update tipoobjeto" do
    patch tipoobjeto_url(@tipoobjeto), params: { tipoobjeto: { descricao: @tipoobjeto.descricao } }
    assert_redirected_to tipoobjeto_url(@tipoobjeto)
  end

  test "should destroy tipoobjeto" do
    assert_difference('Tipoobjeto.count', -1) do
      delete tipoobjeto_url(@tipoobjeto)
    end

    assert_redirected_to tipoobjetos_url
  end
end
