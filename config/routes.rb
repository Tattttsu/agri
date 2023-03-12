Rails.application.routes.draw do
  root "farms#home"
  get "/search", to: "farms#search"
  get "/mapsearch", to: "farms#mapsearch"
  get "/like_farms", to: "farms#like_farms"

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    post 'users/guest_farmer_sign_in', to: 'users/sessions#new_guest_farmer'
  end

  devise_for :users, :controllers =>
    {
      :registrations => 'users/registrations',
      :sessions => 'users/sessions'
    }

  resources :users, only: [:show, :index] do
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end

  resources :farms do
    resource :likes, only: [:create, :destroy, :edit]
    resources :comments, only: [:edit, :update, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
