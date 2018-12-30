Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :destinations
  resources :drivers
  resources :riders 
  resources :vehicles
end
