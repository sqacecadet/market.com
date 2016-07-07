Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :partners
  resources :documents
  resources :type_partners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'partners#index'

end
