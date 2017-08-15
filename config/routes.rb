Rails.application.routes.draw do
  root 'posts#index'

  resources :users do
    resources :posts
  end

  resources :sessions
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'

  post '/login' => 'sessions#create'
end
