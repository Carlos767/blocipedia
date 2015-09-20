Rails.application.routes.draw do
  
 

  devise_for :users
  resources :users, only: [:update, :show, :index]
  resources :wikis

  get 'about'=> 'welcome#about'


  root to: 'welcome#index'
end
