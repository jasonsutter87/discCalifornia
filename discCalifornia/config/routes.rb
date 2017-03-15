Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :course
  resources :holes
  resources :rounds

  root to: "courses#index"
end
