class OrdersController < ApplicationController
  def new
    return redirect_to new_restaurant_path if Restaurant.count < 1

    @order = Order.new
    @restaurants = Restaurant.all
  end

  def create
    @order = Order.create(order_params)

    redirect_to user_path(id: current_user.id)
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  private

  def order_params
    p = params.require(:order).permit(
      :order,
      :restaurant_id
    )
    p[:user_id] = current_user.id
    p
  end
end
