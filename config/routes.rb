Rails.application.routes.draw do
  resources :appearances 

  resources :guests
  resources :episodes

end
