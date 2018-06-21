Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users, only: [:show, :new, :create]
  resources :trucks, only: [:index, :show, :new, :create]
  resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  resources :neighborhoods, only: [:index, :show, :new, :create]


  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create', as: 'session'
  get 'signup', to: 'users#new', as: 'signup'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
end
