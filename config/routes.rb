Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users/show'
  get 'home/index'
  get 'home/show'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'home/index'
  root 'home#index'
  get 'home/show'
  get 'users/show' => 'users#show'
  delete 'comments/:id' => 'comments#destroy'
  resources :priorities
  resources :statuses
  resources :categories
  resources :tasks
  resources :posts do
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
