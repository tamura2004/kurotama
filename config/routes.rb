Rails.application.routes.draw do

  root "menus#new"

  resources :pcs
  resources :maps
  resources :menus
  resources :action_forms, only: [:new, :create]
  resources :move_forms, only: [:new, :create]
  resources :map_image_forms, only: [:new, :create]
  resources :pc_job_form, only: [:new, :create]

end
