Rails.application.routes.draw do
  resources :parametrizacaos
  resources :parametros
  resources :objetos
  resources :usuarios
  get 'sessions/index'
  get 'users/new'
  get 'home/index'
  get 'layouts/workspace'

  root 'home#index'
end
