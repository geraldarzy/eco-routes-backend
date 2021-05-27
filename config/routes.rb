Rails.application.routes.draw do
  get '/trips', to: 'trips#index'
  resources :trip_books do
    resources :trips
  end
  # resources :users 
  post '/login', to: 'users#login'
  post '/signup', to: 'users#signup'
  get '/me', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/origin-destination/:start_long/:start_lat/:end_long/:end_lat" => "map#callAPI"
end
