Rails.application.routes.draw do
  root "users#home"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
    }

  resources :users, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
