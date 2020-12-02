require 'test_helper'

class SummaryControllerTest < ActionDispatch::IntegrationTest
  test "should get summary" do
    get summary_summary_url
    assert_response :success
  end

end
