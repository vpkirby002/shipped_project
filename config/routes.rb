Rails.application.routes.draw do
  resources :boat_jobs
  resources :jobs
  resources :boats
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
