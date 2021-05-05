Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'products#product_viewer'

  get 'products', to: 'products#product_viewer'
  get 'product/:core_number', to: 'products#product_detail', as: 'product'

  patch 'location/edit/:id', to: 'locations#update', as: 'location'
end
