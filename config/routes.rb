Rails.application.routes.draw do
  resources :reservas
	devise_for :users, path: "auth"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "home#index"

  get '/facturas' => 'facturas#index'
end
