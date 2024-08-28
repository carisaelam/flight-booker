Rails.application.routes.draw do
  resources :flights
  resources :airports
  resources :bookings, only: [ :new, :create, :show, :destroy, :index ]
  resources :passenger, only: [ :new, :create, :show, :index ]
  root "flights#index"
end
