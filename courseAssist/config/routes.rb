Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index"

  get "/articles", to: "articles#index"
  #get "/user", to: "user#index"
  resource :users
  resource :dashboards
  get "/addcourses/:id", to: "addcourses#show"
  get "/addcourses", to: "addcourses#index"
  get "/dashboards", to: "dashboards#index"

end
