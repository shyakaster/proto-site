Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :blog, only: [:index, :show]

  resources :services, only: [:index]

  resources :portfolio, only: [:index, :show]

  resources :contacts, only: [:new ,:create]
  #this is a much better way of serving static pages through the static_pages controller's show action
  get 'static_pages/*page' => 'static_pages#show'


end
