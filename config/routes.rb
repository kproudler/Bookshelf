Rails.application.routes.draw do
  resources :shelves, only: [:new, :create, :update, :index, :show]
  resources :books, only: [:new, :edit, :create, :index, :show, :update]
  resources :users
  resource :session, only: [:new, :create, :destroy]

end
