class UsersController < ApplicationController
  def show
    if params[:id]
      @user = User.find_by(id: params[:id])
    end
    if params[:handle]
      @user = User.find_by(handle: params[:handle])
    end
  end
end
