require 'test_helper'

class BrewstylesControllerTest < ActionController::TestCase
  setup do
    @brewstyle = brewstyles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brewstyles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewstyle" do
    assert_difference('Brewstyle.count') do
      post :create, brewstyle: { note: @brewstyle.note, style: @brewstyle.style }
    end

    assert_redirected_to brewstyle_path(assigns(:brewstyle))
  end

  test "should show brewstyle" do
    get :show, id: @brewstyle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewstyle
    assert_response :success
  end

  test "should update brewstyle" do
    put :update, id: @brewstyle, brewstyle: { note: @brewstyle.note, style: @brewstyle.style }
    assert_redirected_to brewstyle_path(assigns(:brewstyle))
  end

  test "should destroy brewstyle" do
    assert_difference('Brewstyle.count', -1) do
      delete :destroy, id: @brewstyle
    end

    assert_redirected_to brewstyles_path
  end
end
