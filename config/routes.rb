# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET /home
  get "home", to: "home#index"
  # Defines the root path route ("/") 


  get "setting", to: "settings#edit", as: :edit_setting # user already signed in and just udating a user vs creating a new user
  patch "setting", to: "settings#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  
  get "dashboard", to: "user#show"
  get "dashboard/games", to: "games#index"


  get "countries", to: "countries#index"
  post "countries", to: "countries#score"

  get "phonics", to: "phonics#index"
  post "phonics", to: "phonics#score"


  get "soccer", to: "soccer#index"
  post "soccer", to: "soccers#score"


  root to: "main#index"
  # root "articles#index"
end
