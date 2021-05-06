class ProductsController < ApplicationController
  def one_product
    if params["id"] == nil
      product = "error: no product entered"
    else
      product = Product.find_by(id: params["id"])
      if product == nil
        product = "Invalid ID"
      end
    end
    render json: product.as_json
  end

  def all_products
    products = Product.all
    render json: products.as_json
  end
end
