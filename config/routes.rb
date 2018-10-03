Rails.application.routes.draw do
  resources :listings, only: [:new, :create, :show, :edit, :update, :index]
  resources :users, only: [:new, :create, :show, :edit, :update]
  get "/", to: 'listings#index'
  get "/login", to: 'sessions#new'
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  get "/sitter_button/:id", to: "listings#sitter_button"
  get "users/:id/newpet", to: "users#newpet"
  post "users/:id/newpet", to: "users#addpet"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
