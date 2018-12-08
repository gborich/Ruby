Rails.application.routes.draw do
  get '/game', to: 'players#new_game'

  get '/champions', to: 'players#champions'

  get '/rules', to: 'players#rules'

  root 'players#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
