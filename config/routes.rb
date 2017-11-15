Rails.application.routes.draw do

  resources :califications
  resources :contracts
  resources :requests
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  root 'frame#inicio', as: :authenticated_root
  ActiveAdmin.routes(self)
  resources :offers
  
  get 'frame/notificaciones' => 'frame#notificaciones'
  get 'frame/agregarOferta' => 'frame#agregarOferta'
  get 'frame/categorias' => 'frame#categorias'
  get 'frame/estadoSolicitud' => 'frame#estadoSolicitud'
  get 'frame/historial' => 'frame#historial'
  get 'frame/inicio' => 'frame#inicio'
  delete 'frame/inicio' => 'frame#inicio'
  post 'frame/inicio' => 'frame#inicio'
  get 'frame/perfilPrivado' => 'frame#perfilPrivado'
  get 'frame/perfilPublico' => 'frame#perfilPublico'  
  get 'frame/solicitudesPend' => 'frame#olicitudesPend'
  get 'frame//verMisOfertas' => 'frame#verMisOfertas'
  get 'frame/verOfertas' => 'frame#verOfertas'
  get 'frame/perfilPublicoCompleto' => 'frame#perfilPublicoCompleto'
  get 'frame/prueba' => 'frame#prueba'
  get 'eliminar' => 'offers#eliminar', as: :eliminar
  get 'aceptar' => 'contracts#aceptar', as: :aceptar
  get 'finalizando' => 'contracts#finalizando', as: :finalizando
  get 'califications/uno' => 'califications#uno', as: :uno
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
