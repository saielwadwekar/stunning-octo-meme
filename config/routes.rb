Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/destroy'
  get 'tweets/delete'
  get 'tweets/create'
  get 'tweets/new'
  get 'tweets/edit'
  get 'tweets/update'

  root "user_details#index"
  resources :user_details
  resources :tweet


  # get 'tweet/index'
  # get 'tweet/create'
  # get 'tweet/new'
  # get 'tweet/destroy'
  # get 'tweet/delete'
  # get 'tweet/edit'
  # get 'tweet/update'
  # get 'tweet/show'

  #POST request is automatically mapped to CREATE action.
  #PATCH/PUT request is automatically mapped to UPDATE action.

 


  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
