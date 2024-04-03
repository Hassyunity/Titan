Rails.application.routes.draw do
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

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
end
