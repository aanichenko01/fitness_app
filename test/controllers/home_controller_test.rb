require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  Devise::Test::IntegrationHelpers

  test "should get home" do
    get root_url
    assert_response :success
    assert_template layout: 'application'

    assert_select 'title', 'Health Me'
    #Checks that all 6 images are displayed on home page
    assert_select 'img', 6
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'
    assert_select 'title', 'Health Me'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Fill in the form below to contact us.'
  end

  test "should post request contact but no email" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
    {name: "Matthew", email: "matthew@me.com",
    telephone: "1234567890", message: "Hello"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
    assert_template layout: 'mailer'
  end

end
