require 'test_helper'

class JsControllerTest < ActionController::TestCase
  test "should get test" do
    get :test
    assert_response :success
  end

end
