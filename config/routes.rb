Rails.application.routes.draw do
  resources :tags
  resources :todos
  resources :comments
  resources :topics
  resources :campaign_tabs
  get 'home/index'

  devise_for :users
  resources :users
  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end