Rails.application.routes.draw do

  ### PAGES ROUTES
  root "pages#home"
  get 'about', to: "pages#about"
  
  ### CATALOGS ROUTES
  resources :anime
  
  ### USERs ROUTES
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  get 'users/:id/confirm-profile-delete', to: 'users#confirm_profile_delete', as: :confirm_profile_delete
  
  # PASSWORD RESETS ROUTES
  resources :password_resets, only: [:new, :create, :edit, :update, :destroy]
  
  ### Session routes for user sessions
  get '/login', to: 'sessions#login', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  
  ### FAVORITES ROUTES
  resources :favorites, only: [:new, :create, :destroy]
  
end
