require 'test_helper'

class ObjetovalparametrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @objetovalparametro = objetovalparametros(:one)
  end

  test "should get index" do
    get objetovalparametros_url
    assert_response :success
  end

  test "should get new" do
    get new_objetovalparametro_url
    assert_response :success
  end

  test "should create objetovalparametro" do
    assert_difference('Objetovalparametro.count') do
      post objetovalparametros_url, params: { objetovalparametro: { belongs_to: @objetovalparametro.belongs_to, belongs_to: @objetovalparametro.belongs_to } }
    end

    assert_redirected_to objetovalparametro_url(Objetovalparametro.last)
  end

  test "should show objetovalparametro" do
    get objetovalparametro_url(@objetovalparametro)
    assert_response :success
  end

  test "should get edit" do
    get edit_objetovalparametro_url(@objetovalparametro)
    assert_response :success
  end

  test "should update objetovalparametro" do
    patch objetovalparametro_url(@objetovalparametro), params: { objetovalparametro: { belongs_to: @objetovalparametro.belongs_to, belongs_to: @objetovalparametro.belongs_to } }
    assert_redirected_to objetovalparametro_url(@objetovalparametro)
  end

  test "should destroy objetovalparametro" do
    assert_difference('Objetovalparametro.count', -1) do
      delete objetovalparametro_url(@objetovalparametro)
    end

    assert_redirected_to objetovalparametros_url
  end
end
