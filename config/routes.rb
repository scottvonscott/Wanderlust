Rails.application.routes.draw do
  
  root 'sessions#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'


  resources :trips do
    resources :itineraries, only: [:show]
  end
  resources :itineraries, only: [:show, :edit, :update] do 
    resources :scheduled_attractions, only: [:new, :create, :show, :edit, :update, :destroy]
  end
  resources :destinations, only: [:index, :show] do
    resources :attractions, only: [:new, :create, :show, :edit, :update, :destroy]
  end

  resources :attractions do 
    resources :comments, only: [:new, :create, :show, :edit, :update, :destroy]
  end

 
  # resources :scheduled_attractions
 
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
