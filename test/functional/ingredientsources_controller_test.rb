require 'test_helper'

class IngredientsourcesControllerTest < ActionController::TestCase
  setup do
    @ingredientsource = ingredientsources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredientsources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredientsource" do
    assert_difference('Ingredientsource.count') do
      post :create, ingredientsource: { address1: @ingredientsource.address1, address2: @ingredientsource.address2, email: @ingredientsource.email, name: @ingredientsource.name, note: @ingredientsource.note, phone: @ingredientsource.phone, url: @ingredientsource.url }
    end

    assert_redirected_to ingredientsource_path(assigns(:ingredientsource))
  end

  test "should show ingredientsource" do
    get :show, id: @ingredientsource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredientsource
    assert_response :success
  end

  test "should update ingredientsource" do
    put :update, id: @ingredientsource, ingredientsource: { address1: @ingredientsource.address1, address2: @ingredientsource.address2, email: @ingredientsource.email, name: @ingredientsource.name, note: @ingredientsource.note, phone: @ingredientsource.phone, url: @ingredientsource.url }
    assert_redirected_to ingredientsource_path(assigns(:ingredientsource))
  end

  test "should destroy ingredientsource" do
    assert_difference('Ingredientsource.count', -1) do
      delete :destroy, id: @ingredientsource
    end

    assert_redirected_to ingredientsources_path
  end
end
