Rails.application.routes.draw do

  resources :requests
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :offers
  
  get 'frame/agregarOferta' => 'frame#agregarOferta'

  get 'frame/categorias' => 'frame#categorias'

  get 'frame/estadoSolicitud' => 'frame#estadoSolicitud'
 
  get 'frame/historial' => 'frame#historial'

  get 'frame/inicio' => 'frame#inicio'

  get 'frame/perfilPrivado' => 'frame#perfilPrivado'

  get 'frame/perfilPublico' => 'frame#perfilPublico'  

  get 'frame/solicitudesPend' => 'frame#olicitudesPend'

  get 'frame/verDetallesOferta' => 'frame#verDetallesOferta'

  get 'frame/verOfertas' => 'frame#verOfertas'

  devise_for :users
  #root 'main#home'
  #root 'users#sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'frame#inicio', as: :authenticated_root


end
