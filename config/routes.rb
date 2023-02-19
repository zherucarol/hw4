Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "places"
  get("/", { :controller => "places", :action => "index" })
  resources "posts"
  get("/", { :controller => "posts", :action => "index" })
end

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

