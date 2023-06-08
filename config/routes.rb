Rails.application.routes.draw do

  ### PAGES ROUTES
  root "pages#home"
  get 'about', to: "pages#about"
  
  ### CATALOGS ROUTES
  resources :animes
  
  ### USERs ROUTES
  resources :users, only: [:new, :create, :show, :edit, :update]
  
  ### Session routes for user sessions
  get '/login', to: 'sessions#login', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  
  ### FAVORITES ROUTES
  resources :favorites, only: [:new, :create, :destroy]
  
end
