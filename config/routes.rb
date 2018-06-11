Rails.application.routes.draw do
  resources :permiso_perfils
  resources :perfils
  resources :permisos
  resources :donacions
  resources :actividads

  devise_for :users
  resources :users

  get '/actividades/pendientes', to: 'actividads#pendientes'
  get '/actividades/aprobadas', to: 'actividads#aprobadas'
  get 'aprobar_actividad', to: 'actividads#aprobar_actividad'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
