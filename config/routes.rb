Rails.application.routes.draw do
  namespace :admin do
      resources :user_roles
      resources :roles
      resources :logs
      resources :locker_users
      resources :locker_states
      resources :locker_compatible_cards
      resources :lockers
      resources :locations
      resources :endpoints
      resources :card_types
      resources :cards
      resources :assets
      resources :accounts
      resources :users

      root to: "user_roles#index"
    end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
