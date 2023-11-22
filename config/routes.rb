Rails.application.routes.draw do
  #Users
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  delete "/users/:id" => "users#destroy"

  #To Dos
  get "/to_dos" => "to_dos#index"
  post "/to_dos" => "to_dos#create"
  get "/to_dos/:id" => "to_dos#show"
  patch "/to_dos/:id" => "to_dos#update"
  delete "/to_dos/:id" => "to_dos#destroy"

  
  #Categories
  get "/categories" => "categories#index"
  post "/categories" => "categories#create"
  get "categories/:id" => "categories#show"
  patch "categories/:id" => "categories#update"
  delete "categories/:id" => "categories#destroy"

  get "/category_to_dos" => "category_to_do#index"
  post "/category_to_dos" => "category_to_do#create"
  get "/category_to_dos/:id" => "category_to_do#show"
  patch "category_to_dos/:id" => "category_to_do#update"
  delete "/category_to_dos/:id" => "category_to_do#destroy"
 end
