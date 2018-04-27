require 'test_helper'

class ForumThreadTest < ActiveSupport::TestCase
  def setup
  	@forumthread = ForumThread.new(user_id: 1 ,first_name: "Abdullah zulifqar", 
  		           subject: "The latest post for testing the app")
  end

  test "User name Must be Present in forum post" do 
  	assert @forumthread.valid?
  end 
  # test "User name can not be empty string " do 
  # 	@forumthread.first_name = " "
  # 	assert_not @forumthread.valid?
  # end 
  test "forum post is containing the subject" do
  	@forumthread
  	assert @forumthread.valid?
  end 

  # test "Subject should pe present with forumthread" do
  # 	@forumthread.subject = " " 
  # 	assert_not @forumthread.valid?
  # end 
end
