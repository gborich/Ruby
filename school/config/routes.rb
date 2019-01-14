Rails.application.routes.draw do
  resources :users, :subjects, :marks
  root 'users#index'
  get '/signin', to: 'users#signin'
  post '/login', to: 'users#login'
end
