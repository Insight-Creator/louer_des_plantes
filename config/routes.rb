Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/profile', to: 'pages#profile'

  resources :plants do
    resources :bookings, only: [:new, :create, :destroy]
  end

  # resources :bookings, only: [:index, :show, :destroy, :update] do
  #   resources :reviews, only: [:create, :index, :show]
  # end
end
