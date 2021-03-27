Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  resources :post_recipes, only: [:new, :create, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :update]
end
