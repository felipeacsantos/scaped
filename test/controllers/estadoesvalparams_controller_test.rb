require 'test_helper'

class EstadoesvalparamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estadoesvalparam = estadoesvalparams(:one)
  end

  test "should get index" do
    get estadoesvalparams_url
    assert_response :success
  end

  test "should get new" do
    get new_estadoesvalparam_url
    assert_response :success
  end

  test "should create estadoesvalparam" do
    assert_difference('Estadoesvalparam.count') do
      post estadoesvalparams_url, params: { estadoesvalparam: { estado_id: @estadoesvalparam.estado_id, esvalparam_id: @estadoesvalparam.esvalparam_id } }
    end

    assert_redirected_to estadoesvalparam_url(Estadoesvalparam.last)
  end

  test "should show estadoesvalparam" do
    get estadoesvalparam_url(@estadoesvalparam)
    assert_response :success
  end

  test "should get edit" do
    get edit_estadoesvalparam_url(@estadoesvalparam)
    assert_response :success
  end

  test "should update estadoesvalparam" do
    patch estadoesvalparam_url(@estadoesvalparam), params: { estadoesvalparam: { estado_id: @estadoesvalparam.estado_id, esvalparam_id: @estadoesvalparam.esvalparam_id } }
    assert_redirected_to estadoesvalparam_url(@estadoesvalparam)
  end

  test "should destroy estadoesvalparam" do
    assert_difference('Estadoesvalparam.count', -1) do
      delete estadoesvalparam_url(@estadoesvalparam)
    end

    assert_redirected_to estadoesvalparams_url
  end
end
