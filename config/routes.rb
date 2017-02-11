Rails.application.routes.draw do
  resources :titles
  devise_for :users
  root 'address_books#index'
  resources :address_books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
