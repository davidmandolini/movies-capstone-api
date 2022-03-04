Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/groups" => "groups#index"
  # post "/groups" => "groups#create"
  get "/groups/:id" => "groups#show"
  # patch "/groups/:id" => "groups#update"
  # delete "/groups/:id" => "groups#destroy"

  get "/events" => "events#index"
  # post "/events" => "events#create"
  get "/events/:id" => "events#show"
  # patch "/events/:id" => "events#update"
  # delete "/events/:id" => "events#destroy"

  get "/nominations" => "nominations#index"
  post "/nominations" => "nominations#create"
  get "/nominations/:id" => "nominations#show"
  # patch "/nominations/:id" => "nominations#update"
  # delete "/nominations/:id" => "nominations#destroy"

  post "/votes" => "votes#create"
  # patch "/votes/:id" => "votes#update"

  # Defines the root path route ("/")
  # root "articles#index"
end
