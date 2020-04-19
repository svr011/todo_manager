Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get "users",to:"users#index"
  #post "users/create",to:"users#create"
  #get "users/:id",to:"users#show"
  get "/" => "home#index"
  resources :todos
  resources :users
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
  post "users/login", to: "users#login"
  
end
