Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'

  get 'pages/index'

  get '/secret', to: 'pages#secret', as: :secret
end
