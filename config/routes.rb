Rails.application.routes.draw do

  root "static_pages#home"
  get "/pages/:page", to: "static_pages#show", as: :page
end
