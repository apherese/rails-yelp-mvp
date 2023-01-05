Rails.application.routes.draw do
  get 'reviews/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants/new", to: "restaurants#new"
  # post "/restaurants", to: "restaurants#create"
  # get "/restaurants/:id", to: "restaurants#show", as: "restaurant"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:create]
  end
end
