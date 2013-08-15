Biker::Application.routes.draw do
  

  resources :regionals


  resources :categories


  devise_for :users

  root to: 'home#index'
  resources :locations
  resources :routes
  resources :histories
  resources :main
  resources :users
  resources :settings
  resources :photos
  resources :friends
  resources :about
  resources :find
end
