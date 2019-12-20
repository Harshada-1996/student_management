Rails.application.routes.draw do
  
  
  resources :book1s
  resources :libraries
  resources :standards
  resources :subjects
  resources :accounts
  resources :students
  resources :tasks
  root 'users#home'
  resources :users
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
