Rails.application.routes.draw do
  resources :bookings
  resources :pets do 
  	collection do 
  		post :search 
  	end 
  end 
  resources :profiles
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, controllers: {registrations: "registrations"}
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
