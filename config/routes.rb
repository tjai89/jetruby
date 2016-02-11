Rails.application.routes.draw do
  resources :menus
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
