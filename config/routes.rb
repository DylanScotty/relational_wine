Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/wineries", to: "wineries#index"
  get "/wineries/new", to: "wineries#new"
  post "/wineries", to: "wineries#create"
  get "/wineries/:id", to: "wineries#show"
  get "/wineries/:id/edit", to: "wineries#edit"
  patch "/wineries/:id", to: "wineries#update"
  get "/wines", to: "wines#index"
  get "/wines/:id", to: "wines#show"
  get "/wineries/:winery_id/wines", to: "winery_wines#index"
  get "/wineries/:winery_id/wines/new", to: "winery_wines#new"
  post "/wineries/:winery_id/wines", to: "winery_wines#create"
  get "/wines/:id/edit", to: "wines#edit"
  patch "/wines/:id", to: "wines#update"
  get "/wineries/:id/wines", to: "winery_wines#index"
  delete "/wineries/:id", to: "wineries#destroy"
  delete "/wines/:id", to: "wines#destroy"

end
