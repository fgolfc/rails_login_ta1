Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  get 'login', to:'tasks#index'
  resource :account, only: [:show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
end
