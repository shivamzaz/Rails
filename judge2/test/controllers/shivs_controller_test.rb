require 'test_helper'

class ShivsControllerTest < ActionController::TestCase
  setup do
    @shiv = shivs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shivs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shiv" do
    assert_difference('Shiv.count') do
      post :create, shiv: { name: @shiv.name, password: @shiv.password }
    end

    assert_redirected_to shiv_path(assigns(:shiv))
  end

  test "should show shiv" do
    get :show, id: @shiv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shiv
    assert_response :success
  end

  test "should update shiv" do
    patch :update, id: @shiv, shiv: { name: @shiv.name, password: @shiv.password }
    assert_redirected_to shiv_path(assigns(:shiv))
  end

  test "should destroy shiv" do
    assert_difference('Shiv.count', -1) do
      delete :destroy, id: @shiv
    end

    assert_redirected_to shivs_path
  end
end
