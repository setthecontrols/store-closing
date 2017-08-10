Rails.application.routes.draw do
  root 'posts#index'

  resources :users do
    resources :posts
  end
  resources :sessions

  get '/register' => 'users#new'

  get '/login' => 'sessions#new'
  post '/register' => 'users#create'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'
end
