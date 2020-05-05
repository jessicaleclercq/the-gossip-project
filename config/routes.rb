Rails.application.routes.draw do

  root 'gossips#index'

  resources :gossips

  get 'user/:id', to: 'static_pages#user', as: 'user'
  get 'team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  get 'welcome/:first_name', to: 'static_pages#welcome'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
