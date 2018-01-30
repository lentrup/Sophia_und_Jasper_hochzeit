require 'lockup'
Rails.application.routes.draw do
mount Lockup::Engine, at: '/lockup-1.4'
resources :guests

root to: 'guests#new'

get 'zu_und_absagen', to: 'guests#new'

get 'pages#zu_und_absagen', to: 'guests#index'

get 'ablauf', to: 'pages#ablauf'

get 'dresscode', to: 'pages#dresscode'

get 'unterkunft', to: 'pages#unterkunft'

get 'gruppenflittern', to: 'pages#gruppenflittern'

get 'geschenke', to: 'pages#geschenke'

get 'kontakt', to: 'pages#kontakt'

resources :pages

end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

