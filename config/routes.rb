Rails.application.routes.draw do
  resources :records
  get 'home/index'
  # Defines the root path route ("/")
  root to: "home#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
end

