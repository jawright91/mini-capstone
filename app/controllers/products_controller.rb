class ProductsController < ApplicationController
  def one_product
    product = Product.first
    render json: product
  end

  def all_products
    products = Product.all
    render json: products
  end
end
