Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "places"
  get("/", { :controller => "places", :action => "index" })
  resources "posts"
  get("/", { :controller => "posts", :action => "index" })
  resources "users"
  resources "sessions"
  
  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"
end

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

