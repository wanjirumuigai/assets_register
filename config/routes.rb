Rails.application.routes.draw do
  resources :assigns
  resources :users, only: [:index, :show, :update, :create]
  resources :licenses, only: [:index, :show, :update, :create]
  resources :assets, only: [:index, :show, :update, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/login', to: 'auth#create'

  post '/users/:id', to: 'users#update'

end
