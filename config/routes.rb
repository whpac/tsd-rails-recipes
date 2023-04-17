Rails.application.routes.draw do
  resources :recipes
  devise_for :users
  root "hello#index"
end
