Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :movies do
  	resources :reviews,except: [:show,:index]
  	match '/available_theater'=>"movies#available_theater",:as => :available_theater,:via =>[:get]
  	match '/seat_selection' =>"movies#seat_selection",:as => :seat_selection,:via=>[:get,:post]
  end	
  
  resources :theaters
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "movies#index"
end
