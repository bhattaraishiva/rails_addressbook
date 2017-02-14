Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'address_books#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :titles
  resources :address_books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
