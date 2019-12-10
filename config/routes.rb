Rails.application.routes.draw do
  
  resources :genres
  resources :authors
  resources :books
  resources :contents
  resources :borrows

  root 'books#index'

end
