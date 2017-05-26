Rails.application.routes.draw do

  root "static_pages#home"
  get "/pages/:page", to: "static_pages#show", as: :page
  get "/signup", to: "users#new"
  post "/signup", to: "user#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :users
  resources :profiles
end
