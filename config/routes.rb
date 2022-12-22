Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  
  root "nutrients#index"
  resources :nutrients
  resources :users
end
