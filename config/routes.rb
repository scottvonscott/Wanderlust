Rails.application.routes.draw do
  resources :scheduled_attractions
  root 'sessions#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  #gonna need nested here
  resources :trips
  resources :itineraries
  resources :destinations
  resources :attractions
  resources :comments
 
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
