class GroupOrdersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def new
    @group_order = GroupOrder.new
    @order = Order.find_by(id: params[:order_id])
    @groups = Group.where(user_id: current_user.id)
  end

  def create
    @group_order = GroupOrder.create(group_order_params)
    group = @group_order.group

    redirect_to group_path(id: group.id)
  end

  def destroy
    @group_order = GroupOrder.find_by(id: params[:id])
    group = @group_order.group
    @group_order.destroy

    redirect_to group_path(id: group.id)
  end

  private

  def group_order_params
    p = params.require(:group_order).permit(
      :group_id,
      :order_id
    )
    p[:user_id] = current_user.id
    p
  end
end
