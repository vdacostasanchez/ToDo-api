Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"

  #Categories

  get "/categories" => "categories#index"
  post "/categories" => "categories#create"
  get "categories/:id" => "categories#show"
  patch "categories/:id" => "categories#update"
  delete "/users/:id" => "users#destroy"

  get "/category_to_dos" => "category_to_do#index"
end
