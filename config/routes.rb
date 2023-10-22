Rails.application.routes.draw do
  get "location/index", to: "location#index"
  get "search", to: "locations#search", as: :search
  get "/about", to: "about#index"
  root "champions#index"

  resources :champions
  resources :locations
end
