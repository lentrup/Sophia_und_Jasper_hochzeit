Rails.application.routes.draw do
resources :guests
root to: 'pages#RSVP'

get 'rsvp', to: 'pages#RSVP'

get 'hochzeit', to: 'pages#Hochzeit'

get 'wildland', to: 'pages#Wildland'

get 'gruppenflittern', to: 'pages#Gruppenflittern'

get 'geschenke', to: 'pages#Geschenke'

get 'kontakt', to: 'pages#Kontakt'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
