Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    get 'authors', to:'authors#index'
    get 'authors/:id', to:'authors#show'
    post 'authors', to:'authors#create'
    put 'authors/:id', to:'authors#update'
    delete 'authors/:id', to:'authors#destroy'
  
  

  get 'authors/:author_id/books', to:'books#index'
  get 'authors/:author_id/books/:id', to:'books#show'
  post 'authors/:author_id/books', to:'books#create'
  put 'authors/:author_id/books/:id', to:'books#update'
  delete 'authors/:author_id/books/:id', to:'books/#destroy'

  
  
  
  end

  # Defines the root path route ("/")
  # root "articles#index"
end

