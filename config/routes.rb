Rails.application.routes.draw do
  resources :listings, only: [:new, :create, :show, :edit, :update, :index]
  resources :users, only: [:new, :create, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
