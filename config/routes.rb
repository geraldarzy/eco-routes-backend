Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/origin-destination/:start_long/:start_lat/:end_long/:end_lat" => "map#callAPI"
end
