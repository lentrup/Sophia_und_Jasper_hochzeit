Rails.application.routes.draw do
resources :guests

root to: 'pages#zu_und_absagen'

get 'zu_und_absagen', to: 'guests#index'

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

