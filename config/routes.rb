Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"

  # Additional routes for tutorials, reviews, comments, etc.
  resources :tutorials do
    resources :reviews, only: [:create, :destroy]
  end

  resources :reviews do
    resources :comments, only: [:create, :destroy]
  end

  resources :comments do
    resources :comments, only: [:create, :destroy]
  end
end
