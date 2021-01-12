Rails.application.routes.draw do

    resources :books, only: [:new, :edit, :create, :index, :show, :update]
    resources :users
    resource :session, only: [:new, :create, :destroy]
    resources :shelves, only: [:new, :create, :update, :show, :edit]

end
