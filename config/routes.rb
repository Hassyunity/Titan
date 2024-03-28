Rails.application.routes.draw do
  get 'home/index'
  get 'inscriptions/new'
  get 'inscriptions/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "dashboard#index"
  get '/inscription', to: 'inscriptions#new'
  post '/inscription', to: 'inscriptions#create'
  post '/login', to: 'sessions#create'
  get '/home', to: 'home#index'
end
