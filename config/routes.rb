# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bookings, only: :create
    end
  end
  resources :users, only: %i[new create]
  resources :companies
  resources :bookings
  devise_for :users
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
