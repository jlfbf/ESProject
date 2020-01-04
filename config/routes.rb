Rails.application.routes.draw do

  resources :people
  resources :schedules
  #change root (home)
  #root to: 'controller#action'
  
  #single resource path example:
  #get 'login', to: 'controller#action'
  
  resources :schedules
  resources :disciplines
  resources :urls
  resources :courses
  resources :schools
  resources :organic_units
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
