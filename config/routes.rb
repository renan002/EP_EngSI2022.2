Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "dashboards", to: "dashboards#show"
  
  get 'sessions/new'

  get 'usuarios/new'
    
  get 'objetivos', to: 'objetivos#new'
  get 'objetivos/:id/edit', to: 'objetivos#edit', as: 'edit_objetivo'
  resources :objetivos

  get 'dividas', to: 'dividas#new'
  resources :dividas

  get 'rendas', to: 'rendas#new'
  resources :rendas

  get 'recursos', to: 'recursos#new'
  resources :recursos

  resources :usuarios
  get 'sign_in' => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'

  root 'sessions#new'

end
