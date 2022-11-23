Rails.application.routes.draw do
  root "users#home"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
    }

  resources :users, only: [:show, :index] do
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end

  resources :farms do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:edit, :update, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
