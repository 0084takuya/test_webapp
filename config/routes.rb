Rails.application.routes.draw do
  resources :pcr_inspections
  resources :clinics
  resources :subjects
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
