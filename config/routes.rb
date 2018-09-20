Rails.application.routes.draw do
  root to: 'homepage#landing_page'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :affairs
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile' => 'homepage#user_homepage'


end
