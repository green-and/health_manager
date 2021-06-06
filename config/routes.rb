Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registraions#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end
  root to: "profiles#index"
  resources :users, only: [:edit, :update]
  resources :profiles, only: [:index, :new, :create]
  resources :meals, only: [:index, :new ,:create ]
  resources :digitals, only: [:index, :create]
  resources :communications, only: [:index, :create]
  resources :goals, only: [:index, :create]
end
