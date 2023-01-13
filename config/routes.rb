Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'register', to: 'sessions#new'
  post 'register', to: 'sessions#register'
  resources :retirements
  resources :users
  resources :sources
  resources :goals
  resources :debts
end
