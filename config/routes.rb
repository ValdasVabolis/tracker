Rails.application.routes.draw do
  get 'measurements/create'
  root to: 'home#index' 
  resources :measurements
end
