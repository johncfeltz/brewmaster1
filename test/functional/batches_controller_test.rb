require 'test_helper'

class BatchesControllerTest < ActionController::TestCase
  setup do
    @batch = batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batch" do
    assert_difference('Batch.count') do
      post :create, batch: { abv: @batch.abv, baserecipe_id: @batch.baserecipe_id, brewmaster_id: @batch.brewmaster_id, brewname_id: @batch.brewname_id, brewstyle_id: @batch.brewstyle_id, fg: @batch.fg, float: @batch.float, isfinished: @batch.isfinished, location: @batch.location, note: @batch.note, og: @batch.og, size: @batch.size }
    end

    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should show batch" do
    get :show, id: @batch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batch
    assert_response :success
  end

  test "should update batch" do
    put :update, id: @batch, batch: { abv: @batch.abv, baserecipe_id: @batch.baserecipe_id, brewmaster_id: @batch.brewmaster_id, brewname_id: @batch.brewname_id, brewstyle_id: @batch.brewstyle_id, fg: @batch.fg, float: @batch.float, isfinished: @batch.isfinished, location: @batch.location, note: @batch.note, og: @batch.og, size: @batch.size }
    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should destroy batch" do
    assert_difference('Batch.count', -1) do
      delete :destroy, id: @batch
    end

    assert_redirected_to batches_path
  end
end
