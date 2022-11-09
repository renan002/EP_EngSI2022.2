Rails.application.routes.draw do
  get 'usuarios/new'
  resources :usuarios
  get 'objetivo', to: 'objetivo#new'
  resources :objetivo

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'dividas', to: 'dividas#new'
  resources :dividas

  get 'rendas', to: 'rendas#new'
  resources :rendas

  get 'pagina_principal', to: 'pagina_principal#index'
  root 'pagina_principal#index'

end
