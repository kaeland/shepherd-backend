Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :destinations, only: [:index, :show, :create]
  resources :drivers, except: [:new, :edit]
  resources :riders , except: [:new, :edit]
  resources :vehicles, except: [:new, :edit, :destroy]
end