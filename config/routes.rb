Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#index'

  resources :homes, only: [:index] do
    collection do
      get :about
    end
  end

  resources :post_recipes, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end