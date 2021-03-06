Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants, only: [:index, :show, :create]

  resources :products, only: [:index, :show, :create]

  resources :bookings, only: [:index, :show, :create]
end
