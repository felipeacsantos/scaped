Rails.application.routes.draw do
  resources :testedefinicaos
  devise_for :usuarios
  resources :estadoesvalparams
  resources :esvalparams
  resources :esparams
    get 'esparams/to/:id', action: :getByTipoEstado, controller: 'esparams'
  resources :valparametroes, as: :valparametroe
  resources :parametroes, as: :parametroe
  resources :tipoestados
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
  get 'sessions/index'
  get 'users/new'
  get 'home/index'
  get 'layouts/workspace'

  root 'home#index'
end
