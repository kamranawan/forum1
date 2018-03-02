ActiveAdmin.register ForumThread do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :subject
#
# or
#
# permit_params do
  # permitted = []
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
# params.require(:forum_thread).permit(:subject, forum_posts_attributes: [:body, :avatar, :avatar_cache])