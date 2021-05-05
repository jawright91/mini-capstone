Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/product", controller: "products", action: "one_product"
  get "/products", controller: "products", action: "all_products"
end
