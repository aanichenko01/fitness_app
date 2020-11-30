Rails.application.routes.draw do
  
  resources :weights
  devise_for :users
  # Resouce paths
  resources :exercises
  resources :workouts

  # Home page is root
  root 'home#home'
  get 'home', to: "home#home"

  # Contact page
  get 'contact', to: 'home#contact'
  #post route for the contact form
  post 'request_contact', to: 'home#request_contact'

end
