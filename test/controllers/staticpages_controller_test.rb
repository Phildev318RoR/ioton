require 'test_helper'

class StaticpagesControllerTest < ActionController::TestCase
  test "should get mychart" do
    get :mychart
    assert_response :success
  end

end
