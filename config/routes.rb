Rails.application.routes.draw do
  root 'menu#index'
  devise_for :users
  resources :firms do
    resources :comments
    resources :appointments, only: [:index]
  end
  resources :menu
  resources :profil
end
