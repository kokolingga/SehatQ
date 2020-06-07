Rails.application.routes.draw do
  
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root to: 'pages#home'
  get '/pages/home'
  resources :hospitals
  resources :doctors
  resources :schedules
end
