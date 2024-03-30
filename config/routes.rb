Rails.application.routes.draw do
  get 'inscriptions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'views', to: 'views#index'
  root "titan#index"
  get '/inscription', to: 'inscriptions#new'
  post '/inscription', to: 'inscriptions#create'

end
