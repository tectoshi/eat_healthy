Rails.application.routes.draw do
  devise_for :users
  
  root "nutrients#index"
  resources :nutrients
  resources :users, only:[:show, :edit, :update]
end
