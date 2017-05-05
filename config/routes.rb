Rails.application.routes.draw do

  root to: 'welcome#index'
  get '/attractions', to: 'attractions#index', as: 'attractions'
  get '/attractions/:id', to: 'attractions#show', as: 'show_attraction'
  post '/takingaride', to: 'rides#create', as: 'take_ride'
  #get '/', to: 'welcome#index', as: 'root'

  # resources :users
  get '/users/new', to: 'users#new', as: 'signup'
  post '/users' , to: 'users#create'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'show'

  # Sign In
  get '/signin', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  #sign out
  delete '/logout', to: 'sessions#destroy', as: 'logout'



end
