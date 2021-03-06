Rails.application.routes.draw do
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'posts'
  resources 'projects'
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'

  devise_for :users, controllers: { registrations: 'registrations'}
end
