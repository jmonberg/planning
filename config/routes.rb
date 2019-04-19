Rails.application.routes.draw do

  resources :projects do
    resources :improvements 
  end

  resources :principles

  resources :books

  devise_for :users

  get 'welcome/index'

#  authenticated :user do |variable|
#    root 'dashboard#index', as: 'authenticated_root'
#  end

  root 'welcome#index'

end
