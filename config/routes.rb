Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get "users",to:"users#index"
  #post "users/create",to:"users#create"
  #get "users/:id",to:"users#show"
  get "/" => "home#index"
  resources :todos
  resources :users
  post "users/login", to: "users#login"
  
end
