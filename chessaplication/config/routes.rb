Rails.application.routes.draw do
  get '/game', to: 'players#new_game'
  get '/champions', to: 'players#champions'
  get '/rules', to: 'players#rules'
  get 'players/edit/:id', to: 'players#edit', as: 'edit'
  post '/update/:id',  to: 'players#update', as: 'update'
  get '/champions/:id', to:'players#show', as:'player'
  get '/form', to: 'players#form'
  post '/form', to: 'players#form'
  delete 'players/delete/:id', to: 'players#delete', as: 'delete'

  root 'players#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
