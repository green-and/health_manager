Rails.application.routes.draw do
  devise_for :users
  root to: "profiles#index"
  resources :users, only: [:edit, :update]
  resources :profiles, only: [:index, :new, :create]
  resources :meals, only: [:index, :new ,:create ]
  resources :digitals, only: [:index, :create]
  resources :communications, only: [:index, :create]
  resources :goals, only: [:index, :create]
end
