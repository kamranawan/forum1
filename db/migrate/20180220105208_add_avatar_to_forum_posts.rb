class AddAvatarToForumPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :forum_posts, :avatar, :string
  end
end
