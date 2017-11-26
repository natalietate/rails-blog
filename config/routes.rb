Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  get 'welcome/index'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :sessions, only: [:create]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :posts do
    resources :comments
  end

  resources :users

  root 'welcome#index'

end
