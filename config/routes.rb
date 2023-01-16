Rails.application.routes.draw do
  post '/register', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  delete 'logout', to: 'auth#destroy'
  patch "/retirements", to: "retirements#update"
  resources :retirements
  resources :users
  resources :sources
  resources :goals
  resources :debts
  get 'user_details/:id', to: 'user_details#show'
end