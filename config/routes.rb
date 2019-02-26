Rails.application.routes.draw do
  root 'products#index'
  resources :products do
    get :autocomplete_product_name, :on => :collection
  end

  get 'product/:id/reload' => 'products#reload', as: :reload
  post 'product/:id/sell' => 'products#sell', as: :sell
  get 'day/close' => 'products#close_day', as: :close_day
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
