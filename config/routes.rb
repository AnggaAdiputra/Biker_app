Biker::Application.routes.draw do
  

  resources :regionals


  resources :categories


  devise_for :users

  root to: 'home#index'
  resources :locations
  resources :routes
  resources :histories
  resources :main
  resources :users do
    resources :photos
  end
  resources :settings
  
  resources :friends do
    collection do
      get :requests
    end
  end
  resources :about
  resources :find
  resources :profile
end
