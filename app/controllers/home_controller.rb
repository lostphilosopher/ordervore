class HomeController < ApplicationController
  def index
  end

  def support
  end

  def contribute
    if ENV['ACCEPT_CONTRIBUTIONS'].nil?
      return redirect_to root_path
    end
  end

  def feedback
  end

  def analytics
    return redirect_to '/' unless current_user && current_user.admin?
    @users = User.count
    @orders = Order.count
    @restaurants = Restaurant.count
  end
end
