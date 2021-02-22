Rails.application.routes.draw do
  
get "/articles", to: "articles#index"
get "/keep_logged_in", to: "users#keep_logged_in"

post "/login", to: "users#login"
post "/singup", to: "users#create"



end
