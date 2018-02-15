class ForumThreads::ForumPostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_forum_thread

  def create
    @forum_post = @forum_thread.forum_posts.new forum_post_params
    @forum_post.user = current_user.id

    if @forum_post.save
       # @forum_post.send_notifications!
      redirect_to @forum_thread, notice: "Successfully posted!"
    else
      redirect_to @forum_thread, alert: "Unable to save your post"
    end
  end

  private

    def set_forum_thread
      @forum_thread = ForumThread.find(params[:forum_thread_id])
    end

    def forum_post_params
      params.require(:forum_post).permit(:body)
    end
end