Rails.application.routes.draw do

  ### PAGES ROUTES
  root "pages#home"
  get 'about', to: "pages#about"
  
  ### CATALOGS ROUTES
  resources :catalogs
  
  ### USERs ROUTES
  resources :users, only: [:new, :create, :show]
  
  ### Session routes for user sessions
  get '/login', to: 'sessions#login', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  
end
