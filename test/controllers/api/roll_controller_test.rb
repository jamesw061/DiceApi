require 'test_helper'

class Api::RollControllerTest < ActionDispatch::IntegrationTest
  test "Roll Dice" do
    data = [1,2,100000000,999999999999999999999]
    data.each { |x|
    get "/api/roll?die=" + x.to_s
    assert_response :success
  }
  get "/api/roll?die=sadf"
  assert_response(400)
  end
end