Rails.application.routes.draw do
    get 'sessions/new'
    get '/', to: 'pages#index'
  
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
  
    resources :users
  end
