class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    cart = current_user.carted_products.where(status: "carted")
    index = 0
    subtotal = 0
    tax = 0
    total = 0

    while index < cart.length
      subtotal += (cart[index].product.price * cart[index].quantity)
      tax += (cart[index].product.tax * cart[index].quantity)
      total += (cart[index].product.total * cart[index].quantity)
      cart[index].product
      index += 1
    end

    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total,
    )

    if order.save
      render json: order
    else
      render json: { errors: order.errors.full_messages }, status: 418
    end
  end

  def show
    order = Order.find_by(id: params[:id])
    if current_user.id == order.user_id
      render json: order
    else
      render json: { error: "You cannot view this order because you are not logged in as the user who created this order." }
    end
  end

  def index
    orders = current_user.orders
    render json: orders
  end
end
