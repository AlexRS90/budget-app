Rails.application.routes.draw do
  get 'management/index'
  get 'management/show'
  get 'categories/index'
  get 'categories/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
