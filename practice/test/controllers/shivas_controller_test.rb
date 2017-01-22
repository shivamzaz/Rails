require 'test_helper'

class ShivasControllerTest < ActionController::TestCase
  setup do
    @shiva = shivas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shivas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shiva" do
    assert_difference('Shiva.count') do
      post :create, shiva: { color: @shiva.color }
    end

    assert_redirected_to shiva_path(assigns(:shiva))
  end

  test "should show shiva" do
    get :show, id: @shiva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shiva
    assert_response :success
  end

  test "should update shiva" do
    patch :update, id: @shiva, shiva: { color: @shiva.color }
    assert_redirected_to shiva_path(assigns(:shiva))
  end

  test "should destroy shiva" do
    assert_difference('Shiva.count', -1) do
      delete :destroy, id: @shiva
    end

    assert_redirected_to shivas_path
  end
end
