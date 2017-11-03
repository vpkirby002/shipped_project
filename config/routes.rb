Rails.application.routes.draw do
  resources :locations 

  get 'regions/:id/locations' => 'locations#regional_location', defaults: { format: :json}
  
  resources :regions
  devise_for :users
  resources :boat_jobs
  resources :jobs 
  resources :boats
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
