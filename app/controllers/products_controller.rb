class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
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

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.save
    render json: product
  end

  def create
    new_product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if params[:name] == nil || params[:price] == nil || params[:image_url] == nil || params[:description] == nil || params[:name] == "" || params[:price] == "" || params[:image_url] == "" || params[:description] == ""
      render json: { message: "Invalid entry. Please enter a name, price, image_url, or description." }
    else
      new_product.save
      render json: new_product
    end
  end
end
