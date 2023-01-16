Rails.application.routes.draw do
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  delete 'logout', to: 'sessions#destroy'
  get 'register', to: 'sessions#new'
  post 'register', to: 'sessions#register'
  patch "/retirements", to: "retirements#update"
  resources :retirements
  resources :users
  resources :sources
  resources :goals
  resources :debts
  get 'user_details/:id', to: 'user_details#show'
end