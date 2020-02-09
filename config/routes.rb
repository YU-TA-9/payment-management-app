Rails.application.routes.draw do
  root to: 'incomes#index'
  resources :expenses
  resources :incomes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
