Rails.application.routes.draw do
  devise_for :users
  root "nutrients#index"
end
