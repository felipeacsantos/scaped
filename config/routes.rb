Rails.application.routes.draw do
  resources :criterios
  resources :objetovalparametros
  resources :valparametros
  resources :parametrizacaos
  resources :parametros
  resources :objetos
  resources :usuarios
  get 'sessions/index'

  get 'users/new'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
