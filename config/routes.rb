Rails.application.routes.draw do
  resources :exercises
  
  root 'homepage#index'
end
