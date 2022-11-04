Rails.application.routes.draw do
  get 'objetivo', to: 'objetivo#new'
  resources :objetivo

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :dividas
  root 'dividas#new'
end
