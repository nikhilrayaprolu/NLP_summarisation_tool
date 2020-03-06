require 'test_helper'

class PostSummariesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post_summaries_new_url
    assert_response :success
  end

  test "should get create" do
    get post_summaries_create_url
    assert_response :success
  end

  test "should get update" do
    get post_summaries_update_url
    assert_response :success
  end

  test "should get edit" do
    get post_summaries_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get post_summaries_destroy_url
    assert_response :success
  end

  test "should get index" do
    get post_summaries_index_url
    assert_response :success
  end

  test "should get show" do
    get post_summaries_show_url
    assert_response :success
  end

end
