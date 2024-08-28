Rails.application.routes.draw do
  resources :flights
  resources :airports
  resources :bookings, only: [ :new, :create, :show ]
  root "flights#index"
end
