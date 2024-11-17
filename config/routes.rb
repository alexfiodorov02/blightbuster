Rails.application.routes.draw do
  root 'home#index'
  resources :reports
  resources :users
end
