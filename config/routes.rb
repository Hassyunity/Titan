Rails.application.routes.draw do

  root "dashboard#index"
  get '/inscription', to: 'inscriptions#new'
  post '/inscription', to: 'inscriptions#create'
  post '/login', to: 'sessions#create'
  get '/home', to: 'home#index'
  # get 'views', to: 'views#index'
  root "titan#index"
  get '/inscription', to: 'inscriptions#new'
  post '/inscription', to: 'inscriptions#create'

  # get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # config/routes.rb
  get '/dashboard', to: 'dashboard#index'

  delete '/logout', to: 'sessions#destroy'
  get '/admin/users', to: 'admin#users'

 # config/routes.rb
  resources :users do
    member do
      put :activate
      put :deactivate
    end  
  end
end
