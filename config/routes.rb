Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "routines#index"
  resources :imports, only: [:new, :create]
  resources :exercises, only: [:index, :show]
  resources :routines, only: [:index, :show]
  resources :workouts, only: [:show]
end
