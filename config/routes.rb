Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :combis do
    resources :bookings, only: [ :new, :create, :index ]
  end
  get '/account', to: 'accounts#dashboard'
end
