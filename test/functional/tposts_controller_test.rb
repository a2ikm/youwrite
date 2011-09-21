require 'test_helper'

class TpostsControllerTest < ActionController::TestCase
  setup do
    @tpost = tposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tpost" do
    assert_difference('Tpost.count') do
      post :create, :tpost => @tpost.attributes
    end

    assert_redirected_to tpost_path(assigns(:tpost))
  end

  test "should show tpost" do
    get :show, :id => @tpost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tpost.to_param
    assert_response :success
  end

  test "should update tpost" do
    put :update, :id => @tpost.to_param, :tpost => @tpost.attributes
    assert_redirected_to tpost_path(assigns(:tpost))
  end

  test "should destroy tpost" do
    assert_difference('Tpost.count', -1) do
      delete :destroy, :id => @tpost.to_param
    end

    assert_redirected_to tposts_path
  end
end
