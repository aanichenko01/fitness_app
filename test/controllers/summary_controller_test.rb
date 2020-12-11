require 'test_helper'

class SummaryControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    sign_in @user
  end

  #Tests getting summary page
  test "should get summary" do
    get summary_url
    assert_response :success
    assert_template layout: 'application'

    assert_select 'h2', 'Your Monthly Summary'
  end

end
