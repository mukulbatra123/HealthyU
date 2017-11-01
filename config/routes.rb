Rails.application.routes.draw do
  resources :exercises

  resources :nutrition
  root 'homepage#index'
end