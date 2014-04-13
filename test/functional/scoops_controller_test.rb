require 'test_helper'

class ScoopsControllerTest < ActionController::TestCase
  setup do
    @scoop = scoops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scoops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scoop" do
    assert_difference('Scoop.count') do
      post :create, scoop: { batch_id: @scoop.batch_id, ingredient_id: @scoop.ingredient_id, quantity: @scoop.quantity, unit: @scoop.unit }
    end

    assert_redirected_to scoop_path(assigns(:scoop))
  end

  test "should show scoop" do
    get :show, id: @scoop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scoop
    assert_response :success
  end

  test "should update scoop" do
    put :update, id: @scoop, scoop: { batch_id: @scoop.batch_id, ingredient_id: @scoop.ingredient_id, quantity: @scoop.quantity, unit: @scoop.unit }
    assert_redirected_to scoop_path(assigns(:scoop))
  end

  test "should destroy scoop" do
    assert_difference('Scoop.count', -1) do
      delete :destroy, id: @scoop
    end

    assert_redirected_to scoops_path
  end
end
