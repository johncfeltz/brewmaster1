require 'test_helper'

class EnumControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
