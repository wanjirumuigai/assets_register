Rails.application.routes.draw do
  resources :assigns
  resources :users
  resources :licenses
  resources :assets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/login', to: 'auth#create'
  post '/users/create', to: 'users#create'
end
