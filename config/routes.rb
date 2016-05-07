Rails.application.routes.draw do

  root "menus#new"

  resources :pcs
  resources :maps
  resources :travels
  resources :moves
  resources :menus

end
