Rails.application.routes.draw do
  root :to => 'notes#index'
  resources :users
  resources :notes
  resources :discussions

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
