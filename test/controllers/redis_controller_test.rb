require 'test_helper'

class RedisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get redis_index_url
    assert_response :success
  end

  test "should get show" do
    get redis_show_url
    assert_response :success
  end

  test "should get new" do
    get redis_new_url
    assert_response :success
  end

  test "should get create" do
    get redis_create_url
    assert_response :success
  end

  test "should get edit" do
    get redis_edit_url
    assert_response :success
  end

end
