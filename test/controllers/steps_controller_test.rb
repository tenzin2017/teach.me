require 'test_helper'

class StepsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get steps_show_url
    assert_response :success
  end

  test "should get new" do
    get steps_new_url
    assert_response :success
  end

  test "should get create" do
    get steps_create_url
    assert_response :success
  end

  test "should get edit" do
    get steps_edit_url
    assert_response :success
  end

end