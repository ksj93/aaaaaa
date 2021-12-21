Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'users#show'
  # devise_for :users
  devise_for :users, :controllers => {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
    }
  devise_for :stores, controllers: {
  sessions:      'stores/sessions',
  passwords:     'stores/passwords',
  registrations: 'stores/registrations'
    }
  get '/users/:id', to: 'users#show', as: 'user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
