Rails.application.routes.draw do
  root 'principal#index'
  devise_for :users
  resources :firms do
    resources :comments
  end
end
