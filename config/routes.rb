Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'categories', to: 'categories#index'
  get 'categories/new'
  post 'categories/create', to: 'categories#create'

  get '/categories/:cat_id/management', to: 'management#index'
  get '/categories/:cat_id/management/new', to: 'management#new'
  post '/categories/:cat_id/management/create', to: 'management#create'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
