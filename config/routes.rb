Rails.application.routes.draw do

  root 'homes#index'
  get 'homes/about' => 'homes#about'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  resources :users, only: [:show, :edit, :update, :destroy]
  resources :records, only: [:create, :update, :destroy]

end
