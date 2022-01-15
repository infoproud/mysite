Rails.application.routes.draw do
  resources :testing_resources
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/', -> 'blogs#index'
  root "blogs#index"
  get '/blogs/:id', to: 'blogs#show'
  delete '/blogs/:id', to: 'blogs#destroy'
end
