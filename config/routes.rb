Rails.application.routes.draw do
  get 'users/index'
  root 'user#index'
  devise_for :users

end
