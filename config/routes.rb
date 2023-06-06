Rails.application.routes.draw do

  ### PAGES CONTOLLERS
  root "pages#home"
  get 'about', to: "pages#about"
end
