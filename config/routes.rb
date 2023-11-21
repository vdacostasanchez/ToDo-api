Rails.application.routes.draw do
  #Users
  get "/users" => "users#index"

  post "/users" => "users#create"

  #To Dos

end
