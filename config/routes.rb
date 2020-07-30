Rails.application.routes.draw do
  
  root 'sessions#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  #gonna need nested here
  resources :trips do
    resources :itineraries, only: [:index, :show]
  end
  resources :itineraries do 
    resources :scheduled_attractions, only: [:new, :create, :show, :edit]
  end
  resources :destinations
  resources :attractions do 
    resources :comments, only: [:new, :create, :show, :edit]
  end

  # resources :comments
  # resources :scheduled_attractions
 
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
