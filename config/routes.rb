Rails.application.routes.draw do
  resources :guarantees
  devise_for :users

  root 'guarantees#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
