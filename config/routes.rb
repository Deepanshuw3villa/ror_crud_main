Rails.application.routes.draw do
  devise_for :users 
  root "friends#index"
  resources :friends
  # to 'update' get "devise#update#update"
end