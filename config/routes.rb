Rails.application.routes.draw do

  ### PAGES ROUTES
  root "pages#home"
  get 'about', to: "pages#about"
  
  ### CATALOGS ROUTES
  resources :catalogs
  
  
  
  
  
end
