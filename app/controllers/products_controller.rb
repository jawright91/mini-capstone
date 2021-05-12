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
      inventory: params[:inventory],
    )
    if new_product.save
      render json: new_product
    else
      render json: { errors: new_product.errors.full_messages }, status: 418
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
