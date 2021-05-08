Rails.application.routes.draw do
  get 'goals/index'
  devise_for :users
  root to: "profiles#index"
  resources :users, only: [:edit, :update]
  resources :profiles, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
