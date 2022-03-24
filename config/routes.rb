Rails.application.routes.draw do
  root 'menu#index'
  devise_for :users
  resources :firms do
    resources :comments
  end
  resources :menu
  resources :profil
end
