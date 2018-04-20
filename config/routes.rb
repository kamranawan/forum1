Rails.application.routes.draw do
  

  get 'welcome/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'forum_threads/index'


  root to: 'welcome#index'

  devise_for :users

  resources :forum_threads do 
  	resources :forum_posts  
  end 
  get 'gallery/images'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



