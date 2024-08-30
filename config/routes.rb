Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/fortune", controller: "my_examples", action: "fortune_teller"
  
  get "/lottery", controller: "my_examples", action: "random_numbers"
  
  get "/visits", controller: "my_examples", action: "count_visits"

  get "/bottles", controller: "my_examples", action: "bottles_o_beer"
  # Defines the root path route ("/")
  # root "posts#index"
end
