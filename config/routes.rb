Rails.application.routes.draw do
  get 'welcome/index'

  resources :regions

  root 'welcome#index'
end
