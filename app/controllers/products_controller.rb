class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def show
    product = Product.find_by(id: params["id"])
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

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.save
    render json: product
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "The unclean product has been purged. Glory to the empire." }
  end
end
