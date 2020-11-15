Rails.application.routes.draw do
  root 'home#home'

  get 'home', to: "home#home"

  get 'contact', to: 'home#contact'
end
