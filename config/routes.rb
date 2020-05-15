Rails.application.routes.draw do
  resources :pcr_inspections
  resources :clinics
  resources :subjects
  root to:'home#index'

end
