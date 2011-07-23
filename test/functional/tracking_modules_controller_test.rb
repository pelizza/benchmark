require 'test_helper'

class TrackingModulesControllerTest < ActionController::TestCase
  setup do
    @tracking_module = tracking_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tracking_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tracking_module" do
    assert_difference('TrackingModule.count') do
      post :create, :tracking_module => @tracking_module.attributes
    end

    assert_redirected_to tracking_module_path(assigns(:tracking_module))
  end

  test "should show tracking_module" do
    get :show, :id => @tracking_module.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tracking_module.to_param
    assert_response :success
  end

  test "should update tracking_module" do
    put :update, :id => @tracking_module.to_param, :tracking_module => @tracking_module.attributes
    assert_redirected_to tracking_module_path(assigns(:tracking_module))
  end

  test "should destroy tracking_module" do
    assert_difference('TrackingModule.count', -1) do
      delete :destroy, :id => @tracking_module.to_param
    end

    assert_redirected_to tracking_modules_path
  end
end
