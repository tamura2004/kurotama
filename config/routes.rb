Rails.application.routes.draw do

  root "menus#top"
  get "menus/top"

  resources :maps
  resources :menus
  resources :current_pcs, only: [:create]

  namespace :maps do
    resources :images, only: [:new, :create]
  end

  resources :pcs

  namespace :pcs do
    resources :actions, only: [:new, :create]
    resources :jobs, only: [:new, :create]
    resources :images, only: [:new, :create]
    resources :names, only: [:new, :create]
  end

end
