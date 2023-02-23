Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #LISTS
  # A user can see all the lists

  resources :lists, only:[:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  # get 'lists', to: 'lists#index'

  # # A user can create a new list
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'

  # # A user can see the details of a given list and its name
  # get 'lists/:id', to: 'lists#show', as: 'list'

  # #BOOKMARKS
  # #create
  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:id/bookmarks', to: 'bookmarks#create'
  # #delete
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
