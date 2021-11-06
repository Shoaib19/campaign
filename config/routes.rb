Rails.application.routes.draw do
  resources :tags
  resources :todos
  resources :comments
  resources :topics
  resources :campaign_tabs
  get 'home/index'
  #get '/topic/error', to: 'topic#new'
  devise_for :users
  resources :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
