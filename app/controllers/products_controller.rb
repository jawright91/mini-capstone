class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

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
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id],
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
    product.description = params[:description] || product.description
    product.inventory = params[:inventory] || product.inventory
    product.supplier_id = params[:supplier_id] || product.supplier_id
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: 418
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "The unclean product has been purged. Glory to the empire." }
  end
end
