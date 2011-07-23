require 'test_helper'

class VehicleStatesControllerTest < ActionController::TestCase
  setup do
    @vehicle_state = vehicle_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_state" do
    assert_difference('VehicleState.count') do
      post :create, :vehicle_state => @vehicle_state.attributes
    end

    assert_redirected_to vehicle_state_path(assigns(:vehicle_state))
  end

  test "should show vehicle_state" do
    get :show, :id => @vehicle_state.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vehicle_state.to_param
    assert_response :success
  end

  test "should update vehicle_state" do
    put :update, :id => @vehicle_state.to_param, :vehicle_state => @vehicle_state.attributes
    assert_redirected_to vehicle_state_path(assigns(:vehicle_state))
  end

  test "should destroy vehicle_state" do
    assert_difference('VehicleState.count', -1) do
      delete :destroy, :id => @vehicle_state.to_param
    end

    assert_redirected_to vehicle_states_path
  end
end
