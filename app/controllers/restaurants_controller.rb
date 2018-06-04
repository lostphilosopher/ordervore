class RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin, only: [:edit, :update, :show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)

    redirect_to new_order_path
  end

  def edit
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def update
    @restaurant = Restaurant.find_by(id: params[:id])
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(id: @restaurant.id)
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :menu_url,
      :website
    )
  end
end
