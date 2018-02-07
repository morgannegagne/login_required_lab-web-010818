Rails.application.routes.draw do

  get 'sessions/new'
  
  root 'application#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/secrets' => 'secrets#show'


end
