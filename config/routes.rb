Rails.application.routes.draw do
  #Modelos devise
  devise_for :users
  devise_for :doctors
  devise_for :patients

  #Configuración de los authenticated & unauthenticated in devise
  #Para los usuarios
  authenticated :user do
    root "home#dashboard"
  end

  #Para los doctores
  authenticated :doctor do
    root "home#index_doctor"
  end

  #Para los pacientes
  authenticated :patient do
    root "home#index_patient"
  end

  #Para los usuarios
  unauthenticated :user do
    root "home#main"
  end

  #Para los doctores
  unauthenticated :doctor do
    root "home#main"
  end

  #Para los pacientes
  unauthenticated :patient do
    root "home#main"
  end

  #Modelos
  resources :clinicas, controller: :clinics, as: :clinics
  resources :consultorios, controller: :consulting_rooms, as: :consulting_rooms
  resources :especialidades, controller: :specialties, as: :specialties
  resources :cualidades, controller: :qualities, as: :qualities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
