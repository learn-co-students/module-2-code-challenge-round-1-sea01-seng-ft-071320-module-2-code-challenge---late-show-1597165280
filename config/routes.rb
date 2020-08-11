Rails.application.routes.draw do
  resources :appearances
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
end