Rails.application.routes.draw do

  resources :guarantees do
    collection do
      get 'search'
    end
  end
  
  devise_for :users

  resources :users

  root 'guarantees#index'
end
