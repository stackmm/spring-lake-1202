Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :mechanics, only: [:show]
  post "/mechanics/:id", to: "mechanics/rides#create"

  resources :amusement_parks, only: [:show]
end
