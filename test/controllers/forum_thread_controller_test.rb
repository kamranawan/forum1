require 'test_helper'

class ForumThreadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forum_thread_index_url
    assert_response :success
  end

end
