Rails.application.routes.draw do
  resources :bookings
  devise_for :admin_users
  devise_for :users
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
