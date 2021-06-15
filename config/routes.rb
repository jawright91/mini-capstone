Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  put "/products/" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  put "/suppliers/" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  # get "/users" => "users#index"
  # get "/users/:id" => "users#show"
  post "/users" => "users#create"
  # patch "/users/:id" => "users#update"
  # put "/users/" => "users#update"
  # delete "/users/:id" => "users#destroy"

  # get "/sessions" => "sessions#index"
  # get "/sessions/:id" => "sessions#show"
  post "/sessions" => "sessions#create"
  # patch "/sessions/:id" => "sessions#update"
  # put "/sessions/" => "sessions#update"
  # delete "/sessions/:id" => "sessions#destroy"

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
  # patch "/orders/:id" => "orders#update"
  # put "/orders/" => "orders#update"
  # delete "/orders/:id" => "orders#destroy"

  get "/carted_products" => "carted_products#index"
  # get "/carted_products/:id" => "carted_products#show"
  post "/carted_products" => "carted_products#create"
  # patch "/carted_products/:id" => "carted_products#update"
  # put "/carted_products/" => "carted_products#update"
  # delete "/carted_products/:id" => "carted_products#destroy"
end
