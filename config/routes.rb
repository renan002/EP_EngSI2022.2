Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get 'sessions/new'

  get 'usuarios/new'
    
  get 'objetivo', to: 'objetivo#new'
  resources :objetivo

  get 'dividas', to: 'dividas#new'
  resources :dividas

  get 'rendas', to: 'rendas#new'
  resources :rendas

  resources :usuarios
  get 'sign_in' => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'

  root 'sessions#new'

end
