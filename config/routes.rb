Rails.application.routes.draw do
  resources :line_items
  resources :carts
  root to: 'visitors#index'
  devise_for :users
  resources :users


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
  # redirects to root if route is wrong
  match '*a' => redirect { |p, req| req.flash[:error] = "This is wrong route: /#{p[:a]}"; '/' }, via: :get
end
