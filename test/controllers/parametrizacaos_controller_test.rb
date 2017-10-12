require 'test_helper'

class ParametrizacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parametrizacao = parametrizacaos(:one)
  end

  test "should get index" do
    get parametrizacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_parametrizacao_url
    assert_response :success
  end

  test "should create parametrizacao" do
    assert_difference('Parametrizacao.count') do
      post parametrizacaos_url, params: { parametrizacao: { objeto_id: @parametrizacao.objeto_id, parametro_id: @parametrizacao.parametro_id } }
    end

    assert_redirected_to parametrizacao_url(Parametrizacao.last)
  end

  test "should show parametrizacao" do
    get parametrizacao_url(@parametrizacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_parametrizacao_url(@parametrizacao)
    assert_response :success
  end

  test "should update parametrizacao" do
    patch parametrizacao_url(@parametrizacao), params: { parametrizacao: { objeto_id: @parametrizacao.objeto_id, parametro_id: @parametrizacao.parametro_id } }
    assert_redirected_to parametrizacao_url(@parametrizacao)
  end

  test "should destroy parametrizacao" do
    assert_difference('Parametrizacao.count', -1) do
      delete parametrizacao_url(@parametrizacao)
    end

    assert_redirected_to parametrizacaos_url
  end
end
