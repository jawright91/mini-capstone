class CartedProductsController < ApplicationController
  before_action :authenticate_user
  validates :quantity, numericality: { greater_than: 0 }

  def create
    cartedproduct = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )
    cartedproduct.save
    render json: cartedproduct
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { message: "product is like super duper destroyed for serial >:)" }
  end

  def index
    cart = current_user.carted_products.where(status: "carted")
    render json: cart
  end
end
