require 'test_helper'

class SummaryControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    sign_in @user
  end

  test "should get summary" do
    get summary_url
    assert_response :success

    assert_select 'h2', 'Your Monthly Summary'
    assert_template layout: 'application'
    assert_template partial: '_header'
    assert_template partial: '_footer'
  end

  test "should redirect to login if not logged in" do
    delete destroy_user_session_url

    get summary_url
    assert_redirected_to new_user_session_url
  end

end