Rails.application.routes.draw do
  resources :qualities
  resources :specialties
  devise_for :patients
  devise_for :doctors
  resources :consulting_rooms
  resources :clinics
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
