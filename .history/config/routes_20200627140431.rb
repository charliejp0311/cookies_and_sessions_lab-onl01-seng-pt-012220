Rails.application.routes.draw do
  get '/', to: 'products#index'
  post '/', to: 'products#add'

  # get 'products/add'
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
