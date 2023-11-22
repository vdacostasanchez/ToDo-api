Rails.application.routes.draw do
  #Users
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  delete "/users/:id" => "users#destroy"

  #To Dos
  get "/to_dos" => "to_dos#index"
  
  #Categories
  get "/categories" => "categories#index"
  post "/categories" => "categories#create"
  get "categories/:id" => "categories#show"
  patch "categories/:id" => "categories#update"
  delete "categories/:id" => "categories#destroy"

  get "/category_to_dos" => "category_to_do#index"
end
