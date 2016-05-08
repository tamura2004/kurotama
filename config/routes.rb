Rails.application.routes.draw do

  root "menus#top"
  get "menus/top"

  resources :pcs
  resources :maps
  resources :menus
  resources :action_forms, only: [:new, :create]
  resources :move_forms, only: [:new, :create]
  resources :map_image_forms, only: [:new, :create]
  resources :pc_job_forms, only: [:new, :create]
  resources :pc_name_forms, only: [:new, :create]
  resources :current_pcs, only: [:create]

end
