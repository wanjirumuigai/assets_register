Rails.application.routes.draw do
  resources :assigns
  resources :users
  resources :licenses, only: [:index, :show, :update, :create]
  resources :assets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
