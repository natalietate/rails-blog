Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  get 'welcome/index'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :sessions, only: [:create]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#logout'

  resources :posts do
    resources :comments
  end

  resources :users

  root 'welcome#index'

end
