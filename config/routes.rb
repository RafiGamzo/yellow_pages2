Rails.application.routes.draw do
  get 'welcome/index'

  resources :regions
  resources :sightings
  resources :species

  root 'welcome#index'
end
