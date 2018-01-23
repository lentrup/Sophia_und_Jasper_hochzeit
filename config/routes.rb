Rails.application.routes.draw do
resources :guests
root to: 'pages#RSVP'

get 'RSVP', to: 'pages#RSVP'

get 'Hochzeit', to: 'pages#Hochzeit'

get 'Wildland', to: 'pages#Wildland'

get 'Gruppenflittern', to: 'pages#Gruppenflittern'

get 'Geschenke', to: 'pages#Geschenke'

get 'Kontakt', to: 'pages#Kontakt'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
