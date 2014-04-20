DinoRails::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root to: 'home#index'
  get '/up' => 'arduino#up'
  get '/down' => 'arduino#down'
  get '/left' => 'arduino#left'
  get '/right' => 'arduino#right'
  get '/on' => 'arduino#on'
  get '/off' => 'arduino#off'
  resources :servopos
  resources :users
  resources :sessions

end