require 'test_helper'

class TestedefinicaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testedefinicao = testedefinicaos(:one)
  end

  test "should get index" do
    get testedefinicaos_url
    assert_response :success
  end

  test "should get new" do
    get new_testedefinicao_url
    assert_response :success
  end

  test "should create testedefinicao" do
    assert_difference('Testedefinicao.count') do
      post testedefinicaos_url, params: { testedefinicao: { checkexists: @testedefinicao.checkexists, checkvalor: @testedefinicao.checkvalor, criterio_id: @testedefinicao.criterio_id, objeto_id: @testedefinicao.objeto_id, texto: @testedefinicao.texto, usuario_id: @testedefinicao.usuario_id, versao: @testedefinicao.versao } }
    end

    assert_redirected_to testedefinicao_url(Testedefinicao.last)
  end

  test "should show testedefinicao" do
    get testedefinicao_url(@testedefinicao)
    assert_response :success
  end

  test "should get edit" do
    get edit_testedefinicao_url(@testedefinicao)
    assert_response :success
  end

  test "should update testedefinicao" do
    patch testedefinicao_url(@testedefinicao), params: { testedefinicao: { checkexists: @testedefinicao.checkexists, checkvalor: @testedefinicao.checkvalor, criterio_id: @testedefinicao.criterio_id, objeto_id: @testedefinicao.objeto_id, texto: @testedefinicao.texto, usuario_id: @testedefinicao.usuario_id, versao: @testedefinicao.versao } }
    assert_redirected_to testedefinicao_url(@testedefinicao)
  end

  test "should destroy testedefinicao" do
    assert_difference('Testedefinicao.count', -1) do
      delete testedefinicao_url(@testedefinicao)
    end

    assert_redirected_to testedefinicaos_url
  end
end
