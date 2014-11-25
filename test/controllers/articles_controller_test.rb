require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get op-ed" do
    get :op-ed
    assert_response :success
  end

  test "should get intro" do
    get :intro
    assert_response :success
  end

end
