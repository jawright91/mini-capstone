class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    order_item = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_i

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: quantity,
      subtotal: (order_item.price * quantity),
      tax: (order_item.tax * quantity),
      total: (order_item.total * quantity),
    )
    if order.save
      render json: order
    else
      render json: { error: ":(" }
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
