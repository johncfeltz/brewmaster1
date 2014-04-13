require 'test_helper'

class BrewstepsControllerTest < ActionController::TestCase
  setup do
    @brewstep = brewsteps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brewsteps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewstep" do
    assert_difference('Brewstep.count') do
      post :create, brewstep: { action: @brewstep.action, batch_id: @brewstep.batch_id, observation: @brewstep.observation }
    end

    assert_redirected_to brewstep_path(assigns(:brewstep))
  end

  test "should show brewstep" do
    get :show, id: @brewstep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewstep
    assert_response :success
  end

  test "should update brewstep" do
    put :update, id: @brewstep, brewstep: { action: @brewstep.action, batch_id: @brewstep.batch_id, observation: @brewstep.observation }
    assert_redirected_to brewstep_path(assigns(:brewstep))
  end

  test "should destroy brewstep" do
    assert_difference('Brewstep.count', -1) do
      delete :destroy, id: @brewstep
    end

    assert_redirected_to brewsteps_path
  end
end
