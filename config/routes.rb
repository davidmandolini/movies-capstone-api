Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/groups" => "groups#index"
  get "/groups/:id" => "groups#show"

  get "/events" => "events#index"
  get "/events/:id" => "events#show"

  get "/nominations" => "nominations#index"
  post "/nominations" => "nominations#create"
  get "/nominations/:id" => "nominations#show"
  patch "/nominations/:id" => "nominations#update"

  get "/searches/:expression" => "searches#index"

  post "/votes" => "votes#create"

  # Defines the root path route ("/")
  # root "articles#index"
end
