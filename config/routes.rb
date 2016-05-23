Rails.application.routes.draw do

  root "menus#top"

  get "menus/top"
  get "menus/gameover"

  get "admins/pcs/delete_all", to: "admins/pcs#delete_all"
  get "admins/mobs/setup", to: "admins/mobs#setup"
  get "admins/mobs/delete_all", to: "admins/mobs#delete_all"

  resources :menus
  resources :maps
  resources :mobs
  resources :pcs

  namespace :pcs do
    resources :jobs, only: [:new, :create]
    resources :actions, only: [:new, :create]
    resources :images, only: [:new, :create]
    resources :names, only: [:new, :create]
    resources :ests, only: [:create]
  end

  namespace :items do
    resources :souls, only: [:destroy]
    resources :shields
    resources :armors
    resources :weapons
    resources :level_ups
  end

end
