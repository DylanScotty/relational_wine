Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/wineries", to: "wineries#index"
  get "/wineries/:id", to: "wineries#show"
  get "/wines", to: "wines#index"
  get "/wines/:id", to: "wines#show"
  get "/wineries/:winery_id/wines", to: "winery_wines#index"
end
