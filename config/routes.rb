Rails.application.routes.draw do
  root 'home#index'
  get '/trips/search' => 'trips#search', as: 'search'
  post '/trips/search' => 'trips#search'
  resources :tickets
  resources :passengers
  resources :trips
  resources :aeroplanes
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
