Rails.application.routes.draw do
  resources :listings
  resources :users, only: [:new, :create, :show, :edit, :update]
  get "/", to: 'listings#index'
  get "/login", to: 'sessions#new'
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  get "/sitter_button/:id", to: "listings#sitter_button"
  get "users/:id/newpet", to: "users#newpet"
  post "users/:id/addpet", to: "users#addpet"

  get "dog_friendly", to: "listings#dog_friendly"
  get "cat_friendly", to: "listings#cat_friendly"
  get "kid_friendly", to: "listings#kid_friendly"

  get "user/:id/listings", to: "users#my_listings"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
