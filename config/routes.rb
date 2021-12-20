Rails.application.routes.draw do
#  get 'users/show'
#  resources :users, :only => [:show]
#  devise_for :users
#  devise_for :users, controllers: {
#        registrations: 'users/registrations'
#}

 # devise_for :users
  devise_for :users, :controllers => {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
   }
  get '/users/:id', to: 'users#show', as: 'user'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
