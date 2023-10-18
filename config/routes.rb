Rails.application.routes.draw do
  get 'location/index', to: 'location#index'
  get '/about', to: 'about#index'
  root "champions#index"

  resources :champions
  resources :locations
end
