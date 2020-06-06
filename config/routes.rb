Rails.application.routes.draw do
  resources :hospitals
  resources :doctors
  resources :schedules
end
