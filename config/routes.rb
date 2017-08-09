Rails.application.routes.draw do
  root to: 'landing_pages#home'

  resources :users
  resources :sessions

  get '/register' => 'users#new'

  get '/login' => 'sessions#new'
  post '/register' => 'users#create'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'
end
