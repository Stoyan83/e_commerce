# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index]
    end
  end

  match '/*path', to: 'pages#index', via: :all
end
