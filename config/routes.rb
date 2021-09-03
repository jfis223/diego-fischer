Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'biografia', to: 'pages#biografia'
  get 'privacy-policy', to: 'pages#privacy-policy'
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
  resources :posts
  resources :projects
end
