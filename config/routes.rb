Rails.application.routes.draw do
  resources :flights do
    collection do
      get :search
    end
  end
  resources :airports
  root "flights#index"
end
