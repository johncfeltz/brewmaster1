require 'test_helper'

class RecipesourcesControllerTest < ActionController::TestCase
  setup do
    @recipesource = recipesources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipesources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipesource" do
    assert_difference('Recipesource.count') do
      post :create, recipesource: { source: @recipesource.source }
    end

    assert_redirected_to recipesource_path(assigns(:recipesource))
  end

  test "should show recipesource" do
    get :show, id: @recipesource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipesource
    assert_response :success
  end

  test "should update recipesource" do
    put :update, id: @recipesource, recipesource: { source: @recipesource.source }
    assert_redirected_to recipesource_path(assigns(:recipesource))
  end

  test "should destroy recipesource" do
    assert_difference('Recipesource.count', -1) do
      delete :destroy, id: @recipesource
    end

    assert_redirected_to recipesources_path
  end
end
