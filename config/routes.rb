Rails.application.routes.draw do

  root :to => 'home#index'
  get  'home' =>'home#index'
  get 'wine' => 'wine#index'
  post 'wine' => 'wine#create'
  get 'wines/:id' => 'wine#show'
  patch 'wines/:id' => 'wine#update'
  put 'wines/:id' => 'wine#update'
  delete 'wines/:id' => 'wine#destroy'
  get 'rouge' => 'wine#rouge'
  get 'blanc' => 'wine#blanc'
  get 'rose' => 'wine#rose'
  get 'autre' => 'wine#autre'
  get 'soon' => 'home#soon'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
