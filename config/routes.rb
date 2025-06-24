# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/home'
  root 'pages#home'
  get 'up' => 'rails/health#show', as: :rails_health_check
  get 'contacts', to: 'pages#contacts'
end