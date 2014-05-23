Rails.application.routes.draw do

  # Specify a custom home page
  get "/" => "home#index"

  # Sign-In and Sign-Out

  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'

end
