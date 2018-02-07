Rails.application.routes.draw do
mount Lockup::Engine, at: '/lockup'
resources :guests, except: [:new]
resources :honeymoons

root to: 'pages#home'

get 'zu_und_absagen', to: 'guests#new'

get 'pages#zu_und_absagen', to: 'guests#index'

get 'ablauf', to: 'pages#ablauf'

get 'erfolg', to: 'pages#success'

get 'dresscode', to: 'pages#dresscode'

get 'unterkunft', to: 'pages#unterkunft'

get 'gruppenflittern', to: 'honeymoons#new'

get 'geschenke', to: 'pages#geschenke'

get 'kontakt', to: 'pages#kontakt'

resources :pages

end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

