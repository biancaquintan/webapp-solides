Rails.application.routes.draw do
  get 'home/index'
  # Defines the root path route ("/")
  root to: "home#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
