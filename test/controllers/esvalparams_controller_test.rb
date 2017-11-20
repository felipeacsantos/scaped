require 'test_helper'

class EsvalparamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @esvalparam = esvalparams(:one)
  end

  test "should get index" do
    get esvalparams_url
    assert_response :success
  end

  test "should get new" do
    get new_esvalparam_url
    assert_response :success
  end

  test "should create esvalparam" do
    assert_difference('Esvalparam.count') do
      post esvalparams_url, params: { esvalparam: { esparam_id: @esvalparam.esparam_id, valor: @esvalparam.valor } }
    end

    assert_redirected_to esvalparam_url(Esvalparam.last)
  end

  test "should show esvalparam" do
    get esvalparam_url(@esvalparam)
    assert_response :success
  end

  test "should get edit" do
    get edit_esvalparam_url(@esvalparam)
    assert_response :success
  end

  test "should update esvalparam" do
    patch esvalparam_url(@esvalparam), params: { esvalparam: { esparam_id: @esvalparam.esparam_id, valor: @esvalparam.valor } }
    assert_redirected_to esvalparam_url(@esvalparam)
  end

  test "should destroy esvalparam" do
    assert_difference('Esvalparam.count', -1) do
      delete esvalparam_url(@esvalparam)
    end

    assert_redirected_to esvalparams_url
  end
end
