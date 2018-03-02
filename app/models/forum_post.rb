class ForumPost < ApplicationRecord
	belongs_to :forum_thread 
	belongs_to :user 

	validates :body, presence: true 
	mount_uploader :avatar, AvatarUploader
	  
end
