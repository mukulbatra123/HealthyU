Rails.application.routes.draw do
  get 'homepage/index'
  resources :exercises

  resources :nutritions
  root 'homepage#index'
end