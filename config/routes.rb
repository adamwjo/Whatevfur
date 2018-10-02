Rails.application.routes.draw do
  resources :listings, only: [:new, :create, :show, :edit, :update, :index]
  resources :users, only: [:new, :create, :show, :edit, :update]
  get "/login", to: 'sessions#new'
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/sitter_button/:id", to: "listings#sitter_button"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
