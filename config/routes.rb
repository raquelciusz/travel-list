Rails.application.routes.draw do
  root 'lists#index'
  resources :lists do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  resources :lists, only: [:destroy]
end
