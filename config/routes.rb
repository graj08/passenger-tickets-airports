Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :airports, only: [:index, :show]
  resources :tickets, only: [:new, :create, :show]
  resources :passengers, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
