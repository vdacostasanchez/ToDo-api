Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"

  #Categories

  get "/categories" => "categories#index"
  post "/categories" => "categories#create"
  get "categories/:id" => "categories#show"
  patch "categories/:id" => "categories#update"
end
