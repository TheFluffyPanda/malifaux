require 'test_helper'

class ArsenalsControllerTest < ActionController::TestCase
  setup do
    @arsenal = arsenals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arsenals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arsenal" do
    assert_difference('Arsenal.count') do
      post :create, arsenal: {  }
    end

    assert_redirected_to arsenal_path(assigns(:arsenal))
  end

  test "should show arsenal" do
    get :show, id: @arsenal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arsenal
    assert_response :success
  end

  test "should update arsenal" do
    patch :update, id: @arsenal, arsenal: {  }
    assert_redirected_to arsenal_path(assigns(:arsenal))
  end

  test "should destroy arsenal" do
    assert_difference('Arsenal.count', -1) do
      delete :destroy, id: @arsenal
    end

    assert_redirected_to arsenals_path
  end
end
