Rails.application.routes.draw do
  get 'root' => 'home#index'
  get  'home' =>'home#index'
  get 'wine' => 'wine#index'
  post 'wine' => 'wine#create'
  get 'wines/:id' => 'wine#show'
  patch 'wines/:id' => 'wine#update'
  delete 'wines/:id' => 'wine#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
