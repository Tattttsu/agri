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

  resources :farms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
