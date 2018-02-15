Rails.application.routes.draw do
  get 'forum_threads/index'

  root to: 'forum_threads#index'

  devise_for :users

  resources :forum_threads do 
  	resources :forum_posts  
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
