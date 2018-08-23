Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :combis do
    resources :bookings, only: [ :new, :create, :index, :review, :update, :validate, :refused ]
  end
  get '/dashboard', to: 'accounts#dashboard'
end
