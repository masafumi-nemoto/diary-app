Rails.application.routes.draw do
    get '/', to: 'pages#index'

    resources :users
end
