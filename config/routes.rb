Rails.application.routes.draw do

  # Specify a custom home page
  get "/" => "home#index"

  # Go to Admin Console
  get "/admin" => "users#admin"

  # Sign-In and Sign-Out

  get "/login" => 'sessions#login'
  get "/logout" => 'sessions#logout'
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

    # Resource: Projects

  # --- Create
  get "/projects/new" => 'projects#new'
  post "/projects" => 'projects#create'

  # --- Read
  get "/projects" => 'projects#index'
  get "/projects/all" => 'projects#show'
  # get "/projects/:id" => 'projects#show'

  # -- Update
  get "/projects/:id/edit" => 'projects#edit'
  patch "/projects/:id" => 'projects#update'

  # --- Delete
  delete "/projects/:id" => 'projects#destroy'

  # Resource: Gantts

  # --- Create
  get "/gantts/new" => 'gantts#new'
  post "/gantts" => 'gantts#create'

  # --- Read
  get "/gantts" => 'gantts#index'
  get "/gantts/:id" => 'gantts#show'

  # -- Update
  get "/gantts/:id/edit" => 'gantts#edit'
  patch "/gantts/:id" => 'gantts#update'

  # --- Delete
  delete "/gantts/:id" => 'gantts#destroy'

  # Resource: Photos

  # --- Create
  get "/photos/new" => 'photos#new'
  post "/photos" => 'photos#create'

  # --- Read
  get "/photos" => 'photos#index'
  get "/photos/:id" => 'photos#show'

  # -- Update
  get "/photos/:id/edit" => 'photos#edit'
  patch "/photos/:id" => 'photos#update'

  # --- Delete
  delete "/photos/:id" => 'photos#destroy'

  # Resource: Updates

  # --- Create
  get "/updates/new" => 'updates#new'
  post "/updates" => 'updates#create'

  # --- Read
  get "/updates" => 'updates#index'
  get "/updates/:id" => 'updates#show'

  # -- Update
  get "/updates/:id/edit" => 'updates#edit'
  patch "/updates/:id" => 'updates#update'

  # --- Delete
  delete "/updates/:id" => 'updates#destroy'



end
