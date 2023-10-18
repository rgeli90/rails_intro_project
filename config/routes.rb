Rails.application.routes.draw do
  get '/about', to: 'about#index'
  root "champions#index"

  resources :champions
end
