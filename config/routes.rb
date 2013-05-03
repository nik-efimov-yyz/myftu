Myftu::Application.routes.draw do

  root :to => "static#index"

  # Airplanes
  resources :airplanes, :path => "aircraft" do
    resources :flights
    resources :bookings
    resources :snags
  end
end
