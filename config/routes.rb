Rails.application.routes.draw do

  root to: 'welcome#index'

  get '/attractions', to: 'attractions#index', as: 'attractions'
  get '/attractions/new', to: 'attractions#new', as: 'new_attraction'
  post '/attractions', to: 'attractions#create'

  get '/attractions/:id/edit', to: 'attractions#edit', as: 'edit_attraction'
  patch '/attractions/:id', to: 'attractions#update', as: 'stuck_here_for_one_hour'

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
