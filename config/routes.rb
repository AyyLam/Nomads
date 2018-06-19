Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :trucks
  resources :reviews, only: [:show, :new, :create]
  resources :neighborhoods

  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create', as: 'session'
  get 'signup', to: 'users#new', as: 'signup'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
end
