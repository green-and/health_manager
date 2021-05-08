Rails.application.routes.draw do
  get 'goals/index'
  devise_for :users
  root to: "profiles#index"
  resources :users, only: [:edit, :update]
  resources :profiles, only: [:index, :new, :create]
  resources :meals, only: [:index, :new ,:create ]
  resources :digitals, only: [:index]
end
