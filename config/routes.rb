Rails.application.routes.draw do
  get 'admin/users'
  get 'dashboard/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'inscriptions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'views', to: 'views#index'
  root "titan#index"
  get '/inscription', to: 'inscriptions#new'
  post '/inscription', to: 'inscriptions#create'

  #get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # config/routes.rb
  get '/dashboard', to: 'dashboard#index'

  # delete '/logout', to: 'sessions#destroy'
  get '/admin/users', to: 'admin#users'

  get '/profile', to: 'users#show'
  get '/logout', to: 'sessions#destroy'
 # config/routes.rb
  resources :users do
    member do
      put :activate
      put :deactivate
    end  
  end
  # config/routes.rb
  resources :users, only: [:show]

end
