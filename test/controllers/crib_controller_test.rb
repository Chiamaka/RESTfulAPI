require 'test_helper'

class CribControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
