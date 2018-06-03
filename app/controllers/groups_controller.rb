class GroupsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def show
    @group = Group.find_by(id: params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)

    redirect_to group_path(id: @group.id)
  end

  def destroy
    @group = Group.find_by(id: params[:id])
    @group.destroy

    redirect_to groups_path
  end

  private

  def group_params
    p = params.require(:group).permit(
      :name
    )
    p[:user_id] = current_user.id
    p
  end
end
