Rails.application.routes.draw do
  resources :guarantees
  devise_for :users

  root 'guarantees#index'
end
