Rails.application.routes.draw do
  get 'weeks/sonday'

  get 'weeks/monday'

  get 'weeks/tuesday'

  get 'weeks/wednsday'

  get 'weeks/thursday'

  get 'weeks/friday'

  get 'weeks/saturday'

  resources :menus

  root to: 'visitors#index'

  devise_for :users
  
  resources :users
end
