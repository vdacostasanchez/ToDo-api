Rails.application.routes.draw do
  get "/users" => "users#index"

  post "/users" => "users#create"

  #Categories

  get "/categories" => "categories#index"
  post "/categories" => "categories#create"
  get "categories/:id" => "categories#show"
  
end
