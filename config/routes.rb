Rails.application.routes.draw do

  ### PAGES ROUTES
  root "pages#home"
  get 'about', to: "pages#about"
  
  ### CATALOGS ROUTES
  resources :catalogs
  
  ### USERs ROUTES
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  
  ### Session routes for user sessions
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#desroy'
  
end
