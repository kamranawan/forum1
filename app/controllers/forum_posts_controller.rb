class ForumPostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_forum_thread, except: [:edit]


  def create
    @forum_post = @forum_thread.forum_posts.new forum_post_params
    @forum_post.user_id = current_user.id

    if @forum_post.save
       # @forum_post.send_notifications!
      url = forum_thread_path(@forum_thread)
      redirect_to "#{url}#forum_post_#{@forum_post.id}", notice: "Successfully posted!"
    else
      redirect_to @forum_thread, alert: "Unable to save your post"
    end
  end

  def edit
     @forum_thread = ForumThread.find(params[:forum_thread_id])
     @forum_post = @forum_thread.forum_posts.find(params[:id])
  end

  def update
    @forum_thread = ForumThread.find(params[:forum_thread_id])
    @forum_post = @forum_thread.forum_posts.find(params[:id])
    url = forum_thread_path(@forum_thread)
    
    if @forum_post.update(forum_post_params)
      redirect_to "#{url}#forum_post_#{@forum_post.id}"
    else 
      render 'edit'
    end
  end

  def destroy
    
  end

  private

    def set_forum_thread
      @forum_thread = ForumThread.find(params[:forum_thread_id])
    end

    def forum_post_params
      params.require(:forum_post).permit(:body, :avatar)
    end
end

