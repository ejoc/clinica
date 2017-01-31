Rails.application.routes.draw do
  resources :reservas
  resources :pacientes
  resources :servicios
	devise_for :users, path: "auth"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "home#index"

  resources :facturas
end
