require 'test_helper'

class AppResponseLoggerTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, AppResponseLogger
  end
end


class MyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_equal 'Hello, world!', @response.body
  end

  test "should get api" do
    get :api
    assert_response :success
    json = {
      "name"=> AppResponseLogger.to_s,
      "version"=> AppResponseLogger::VERSION,
      "some_number"=> 123
    }
    assert_equal json, JSON.parse(@response.body)

  end
end