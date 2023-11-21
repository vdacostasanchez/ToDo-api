Rails.application.routes.draw do
  #Users
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"

  #To Dos
  get "/to_dos" => "to_dos#index"
end
