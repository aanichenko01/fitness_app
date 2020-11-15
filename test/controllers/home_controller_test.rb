require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'My Fitness'
    assert_select 'h1', 'My Fitness'
    assert_select 'p', 'Welcome to "My Fitness!"'
  end

end
