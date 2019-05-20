Rails.application.routes.draw do
  root "todolists#index"
  devise_for :users

  resources :todolists
end
