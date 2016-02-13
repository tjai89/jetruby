Rails.application.routes.draw do

  resources :menus do
    collection do 
      get 'sunday' 
      get 'monday'   
      get 'tuesday'  
      get 'wednesday'  
      get 'thursday'  
      get 'friday'   
      get 'saturday'
    end
  end


  root to: 'visitors#index'

  devise_for :users
  
  resources :users
end
