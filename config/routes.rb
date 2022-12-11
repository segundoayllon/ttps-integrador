Rails.application.routes.draw do
  resources :turnos
  resources :sucursales
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  root to: 'user#new'

  devise_for controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  
end
