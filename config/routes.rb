Rails.application.routes.draw do
  resources :reviews
  resources :stories
  resources :categories
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
