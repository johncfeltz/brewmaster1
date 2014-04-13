require 'test_helper'

class BrewmastersControllerTest < ActionController::TestCase
  setup do
    @brewmaster = brewmasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brewmasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewmaster" do
    assert_difference('Brewmaster.count') do
      post :create, brewmaster: { name: @brewmaster.name, note: @brewmaster.note }
    end

    assert_redirected_to brewmaster_path(assigns(:brewmaster))
  end

  test "should show brewmaster" do
    get :show, id: @brewmaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewmaster
    assert_response :success
  end

  test "should update brewmaster" do
    put :update, id: @brewmaster, brewmaster: { name: @brewmaster.name, note: @brewmaster.note }
    assert_redirected_to brewmaster_path(assigns(:brewmaster))
  end

  test "should destroy brewmaster" do
    assert_difference('Brewmaster.count', -1) do
      delete :destroy, id: @brewmaster
    end

    assert_redirected_to brewmasters_path
  end
end
