require 'test_helper'

class PrasControllerTest < ActionController::TestCase
  setup do
    @pra = pras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pra" do
    assert_difference('Pra.count') do
      post :create, pra: { color: @pra.color, name: @pra.name }
    end

    assert_redirected_to pra_path(assigns(:pra))
  end

  test "should show pra" do
    get :show, id: @pra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pra
    assert_response :success
  end

  test "should update pra" do
    patch :update, id: @pra, pra: { color: @pra.color, name: @pra.name }
    assert_redirected_to pra_path(assigns(:pra))
  end

  test "should destroy pra" do
    assert_difference('Pra.count', -1) do
      delete :destroy, id: @pra
    end

    assert_redirected_to pras_path
  end
end
