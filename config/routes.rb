Rails.application.routes.draw do

  get 'move_forms/new'

  get 'move_forms/create'

  root "menus#new"

  resources :pcs
  resources :maps
  resources :menus
  resources :action_forms, only: [:new, :create]
  resources :move_forms, only: [:new, :create]

end
