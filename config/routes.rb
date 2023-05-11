# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET /home
  get "home", to: "home#index", as: :home
  # Defines the root path route ("/")
  root to: "main#index"
  # root "articles#index"
end
