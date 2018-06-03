class OrdersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def new
    return redirect_to new_restaurant_path if Restaurant.count < 1

    @order = Order.new
    @restaurants = Restaurant.all
  end

  def create
    @order = Order.create(order_params)

    redirect_to user_path(id: current_user.id)
  end

  def edit
    @order = Order.find_by(id: params[:id])
    @restaurants = Restaurant.all
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.update(order_params)
    redirect_to order_path(id: @order.id)
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @order.destroy
    redirect_to user_path(id: current_user.id)
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def index
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
