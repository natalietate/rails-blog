Rails.application.routes.draw do
  get 'users/new'
  get 'welcome/index'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :posts do
    resources :comments
  end

  resources :users

  root 'welcome#index'

end
