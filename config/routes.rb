Rails.application.routes.draw do
  get 'entities/index'
  get 'entities/show'
  get 'groups/index'
  get 'groups/new'
  root 'groups#index'
  devise_for :users

  resources :users, only: :index do
    resources :groups, only: [:index, :new, :create] do
      resources :entities, only: [:index, :new, :create]
    end
  end
end
