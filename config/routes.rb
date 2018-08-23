Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :combis do
    resources :bookings, only: [ :new, :create, :index ]
  end
  resources :bookings, only: [:update]
  get '/bookings/:id/refused', to: 'bookings#refused'
  get '/bookings/:id/validate', to: 'bookings#validate'
  get '/bookings/:id/review', to: 'bookings#review'
  get '/dashboard', to: 'accounts#dashboard'
end
