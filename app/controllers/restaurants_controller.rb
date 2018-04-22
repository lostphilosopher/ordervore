class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)

    redirect_to new_order_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :menu_url
    )
  end
end
