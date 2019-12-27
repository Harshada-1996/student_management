Rails.application.routes.draw do
  
  resources :pages
  resources :sessions
  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
  
  resources :book1s
  resources :libraries
  resources :standards
  resources :subjects
  resources :accounts
  resources :students
  resources :tasks
  root 'pages#signup'
  resources :users
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
