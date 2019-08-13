Rails.application.routes.draw do
  resources :seats
  resources :reservations
  resources :users
  resources :flights
  resources :airplanes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
