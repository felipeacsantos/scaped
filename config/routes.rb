Rails.application.routes.draw do
  resources :criterioestados
  resources :estados
  resources :testes
  resources :tipoobjetos
  resources :criterios
  resources :objetovalparametros
  resources :valparametros
  resources :parametrizacaos
  resources :parametros
    #get '', :controller => :ParametrosController, :action => 'getByTipoObjeto'
    get 'parametros/to/:id', action: :getByTipoObjeto, controller: 'parametros'
  resources :objetos
  resources :usuarios
  get 'sessions/index'

  get 'users/new'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
