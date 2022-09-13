require "test_helper"

class UserDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_details_create_url
    assert_response :success
  end

  test "should get new" do
    get user_details_new_url
    assert_response :success
  end

  test "should get welcome_page" do
    get user_details_welcome_page_url
    assert_response :success
  end

  test "should get sign_up" do
    get user_details_sign_up_url
    assert_response :success
  end

  test "should get show" do
    get user_details_show_url
    assert_response :success
  end

  test "should get index" do
    get user_details_index_url
    assert_response :success
  end
end
