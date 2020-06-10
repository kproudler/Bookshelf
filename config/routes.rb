Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books, only: [:new, :edit, :create, :index, :show, :update]
  resources :users
  resource :session, only: [:new, :create, :destroy]

end
