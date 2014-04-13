require 'test_helper'

class BrewnamesControllerTest < ActionController::TestCase
  setup do
    @brewname = brewnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brewnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewname" do
    assert_difference('Brewname.count') do
      post :create, brewname: { name: @brewname.name, note: @brewname.note }
    end

    assert_redirected_to brewname_path(assigns(:brewname))
  end

  test "should show brewname" do
    get :show, id: @brewname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewname
    assert_response :success
  end

  test "should update brewname" do
    put :update, id: @brewname, brewname: { name: @brewname.name, note: @brewname.note }
    assert_redirected_to brewname_path(assigns(:brewname))
  end

  test "should destroy brewname" do
    assert_difference('Brewname.count', -1) do
      delete :destroy, id: @brewname
    end

    assert_redirected_to brewnames_path
  end
end
