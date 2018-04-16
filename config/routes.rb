Rails.application.routes.draw do

  resources :guarantees do
    collection do
      get 'search'
    end
  end

  devise_for :users, :path_prefix => 'profile', controllers: { registrations: 'users/registrations' }

  resources :users

  root 'guarantees#index'
end
