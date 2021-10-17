Rails.application.routes.draw do
  root 'homes#index'
  resources :articles
  get 'users/index'
  resources :users, defaults: { format: :json }
  # get 'homes/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
