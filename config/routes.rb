Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/', -> 'blogs#index'
  root "blogs#index"
  # get 'blogs/1', to: 'blogs#show'
end