Rails.application.routes.draw do
  devise_for :users
  get 'leads/index'
  get 'leads/new'
  get 'leads/create'
  get 'leads/edit'
  get 'leads/update'
  resources :talks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "leads#index"
end
