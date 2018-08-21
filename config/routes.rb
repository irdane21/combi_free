Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :combis do
    resources :bookings, only: [ :new, :create, :index ]
  end
  get '/dashboard', to: 'accounts#dashboard'
end
