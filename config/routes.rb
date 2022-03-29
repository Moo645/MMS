Rails.application.routes.draw do
  root 'pages#index'

  resources :products
  resources :manufacturing_orders
  resources :molding_daily_sheets
  resources :molding_details
end
