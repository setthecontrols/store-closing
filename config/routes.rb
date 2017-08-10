Rails.application.routes.draw do
  root 'posts#index'

  resources :users do
    resources :posts
  end
  resources :sessions

  get '/logout' => 'sessions#destroy'
end
