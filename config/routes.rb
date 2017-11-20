Rails.application.routes.draw do
  get 'users/new'

  get 'welcome/index'

  resources :posts do
    resources :comments
  end

  root 'welcome#index'

end
