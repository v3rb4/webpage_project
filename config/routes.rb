# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  get 'up' => 'rails/health#show', as: :rails_health_check

end
