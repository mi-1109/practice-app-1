Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#index'

  resources :post_recipes, only: [:new, :create, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :update] do
    
  end
end
