Rails.application.routes.draw do
  root 'groups#index'
  devise_for :users

  resources :users, only: :index do
    resources :groups, only: [:index, :new, :create] do
      resources :entities, only: [:index, :new, :create]
    end
  end
end
