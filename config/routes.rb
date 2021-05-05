Rails.application.routes.draw do
  get 'goals/index'
  devise_for :users
  root to: "goals#index"
  resources :users, only: [:edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
