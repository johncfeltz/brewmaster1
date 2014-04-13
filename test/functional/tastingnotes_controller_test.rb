require 'test_helper'

class TastingnotesControllerTest < ActionController::TestCase
  setup do
    @tastingnote = tastingnotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tastingnotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tastingnote" do
    assert_difference('Tastingnote.count') do
      post :create, tastingnote: { aroma: @tastingnote.aroma, batch_id: @tastingnote.batch_id, body: @tastingnote.body, color: @tastingnote.color, date: @tastingnote.date, faults: @tastingnote.faults, finish: @tastingnote.finish, head: @tastingnote.head, note: @tastingnote.note, quality: @tastingnote.quality, taste: @tastingnote.taste, taster: @tastingnote.taster, temperature: @tastingnote.temperature, tipicity: @tastingnote.tipicity }
    end

    assert_redirected_to tastingnote_path(assigns(:tastingnote))
  end

  test "should show tastingnote" do
    get :show, id: @tastingnote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tastingnote
    assert_response :success
  end

  test "should update tastingnote" do
    put :update, id: @tastingnote, tastingnote: { aroma: @tastingnote.aroma, batch_id: @tastingnote.batch_id, body: @tastingnote.body, color: @tastingnote.color, date: @tastingnote.date, faults: @tastingnote.faults, finish: @tastingnote.finish, head: @tastingnote.head, note: @tastingnote.note, quality: @tastingnote.quality, taste: @tastingnote.taste, taster: @tastingnote.taster, temperature: @tastingnote.temperature, tipicity: @tastingnote.tipicity }
    assert_redirected_to tastingnote_path(assigns(:tastingnote))
  end

  test "should destroy tastingnote" do
    assert_difference('Tastingnote.count', -1) do
      delete :destroy, id: @tastingnote
    end

    assert_redirected_to tastingnotes_path
  end
end
