Rails.application.routes.draw do

  root "menus#top"
  get "menus/top"

  get "/maps", to: "maps#index"
  patch "/map/:name", to: "maps#update", as: :map

  get "admins/pcs/delete_all", to: "admins/pcs#delete_all"


  # resources :maps
  resources :menus
  resources :current_pcs, only: [:create]

  # namespace :maps do
  #   resources :images, only: [:new, :create]
  # end

  resources :pcs

  namespace :pcs do
    resources :jobs, only: [:new, :create]
    resources :actions, only: [:new, :create]
    resources :images, only: [:new, :create]
    resources :names, only: [:new, :create]
  end

end
