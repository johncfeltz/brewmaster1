require 'test_helper'

class BaserecipesControllerTest < ActionController::TestCase
  setup do
    @baserecipe = baserecipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baserecipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baserecipe" do
    assert_difference('Baserecipe.count') do
      post :create, baserecipe: { name: @baserecipe.name, note: @baserecipe.note, recipe: @baserecipe.recipe, recipesource_id: @baserecipe.recipesource_id, recipesourceref: @baserecipe.recipesourceref }
    end

    assert_redirected_to baserecipe_path(assigns(:baserecipe))
  end

  test "should show baserecipe" do
    get :show, id: @baserecipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baserecipe
    assert_response :success
  end

  test "should update baserecipe" do
    put :update, id: @baserecipe, baserecipe: { name: @baserecipe.name, note: @baserecipe.note, recipe: @baserecipe.recipe, recipesource_id: @baserecipe.recipesource_id, recipesourceref: @baserecipe.recipesourceref }
    assert_redirected_to baserecipe_path(assigns(:baserecipe))
  end

  test "should destroy baserecipe" do
    assert_difference('Baserecipe.count', -1) do
      delete :destroy, id: @baserecipe
    end

    assert_redirected_to baserecipes_path
  end
end
