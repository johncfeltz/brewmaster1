require 'test_helper'

class IngredientclassesControllerTest < ActionController::TestCase
  setup do
    @ingredientclass = ingredientclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredientclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredientclass" do
    assert_difference('Ingredientclass.count') do
      post :create, ingredientclass: { ingredclass: @ingredientclass.ingredclass }
    end

    assert_redirected_to ingredientclass_path(assigns(:ingredientclass))
  end

  test "should show ingredientclass" do
    get :show, id: @ingredientclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredientclass
    assert_response :success
  end

  test "should update ingredientclass" do
    put :update, id: @ingredientclass, ingredientclass: { ingredclass: @ingredientclass.ingredclass }
    assert_redirected_to ingredientclass_path(assigns(:ingredientclass))
  end

  test "should destroy ingredientclass" do
    assert_difference('Ingredientclass.count', -1) do
      delete :destroy, id: @ingredientclass
    end

    assert_redirected_to ingredientclasses_path
  end
end
