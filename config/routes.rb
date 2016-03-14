Rails.application.routes.draw do
  post '/refundations', to: 'refundations#accept'
  put '/applications', to: 'applications#reject'
  devise_for :users
  resources :users
  resources :applications
  resources :categories
  resources :refundations
  root 'applications#index'
  
end
