Rails.application.routes.draw do
  #Modelos devise
  devise_for :users
  devise_for :doctors
  devise_for :patients
  
  #Modelos
  resources :clinics
  resources :consulting_rooms
  resources :specialties
  resources :qualities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
