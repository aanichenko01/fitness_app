require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Health Me'
    assert_select 'h1', 'Health Me'
    assert_select 'p', 'Welcome to "Health Me!"'
  end

end
