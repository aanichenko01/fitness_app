Rails.application.routes.draw do
  devise_for :users
  resources :exercises
  resources :workouts
  root 'home#home'

  get 'home', to: "home#home"

  get 'contact', to: 'home#contact'

  #post route for the contact form
  post 'request_contact', to: 'home#request_contact'

end
