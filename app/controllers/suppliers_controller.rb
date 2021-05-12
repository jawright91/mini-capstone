class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def show
    supplier = Supplier.find_by(id: params["id"])
    render json: supplier
  end

  def create
    new_supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    if new_supplier.save
      render json: new_supplier
    else
      render json: { errors: new_supplier.errors.full_messages }, status: 418
    end
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    render json: supplier
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: { message: "The unclean supplier has been purged. Glory to the empire." }
  end
end
