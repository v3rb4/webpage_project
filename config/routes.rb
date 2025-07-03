# frozen_string_literal: true

Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'services/index'
  get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Public routes
  root 'pages#show', slug: 'home'

  root 'home#index'

  resources :services, only: [:index]
  resources :posts, only: [:index]
  resources :contacts, only: %i[new create]

  get '/services', to: 'pages#show', defaults: { slug: 'services' }
  get '/blog', to: 'posts#index'
  get '/contact', to: 'contact_requests#new'
  post '/contact', to: 'contact_requests#create'

  # Optional: Health check route (если хочешь оставить)
  get 'up' => 'rails/health#show', as: :rails_health_check
end
