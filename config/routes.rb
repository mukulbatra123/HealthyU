Rails.application.routes.draw do
  get 'homepage/index'
  resources :exercises

  resources :nutrition
  root 'homepage#index'
end