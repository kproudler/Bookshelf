Rails.application.routes.draw do
  resources :shelves, only: [:new, :create, :update, :show, :edit]
  resources :books, only: [:new, :edit, :create, :index, :show, :update]
  resources :users
  resource :session, only: [:new, :create, :destroy]

end
