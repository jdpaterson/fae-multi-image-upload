Rails.application.routes.draw do

  namespace :admin do
    resources :test_scaffs
    resources :listings
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  resources :listings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
