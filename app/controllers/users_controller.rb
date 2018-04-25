class UsersController < ApplicationController
  def show
    if params[:id]
      @user = User.find_by(id: params[:id])
    end
    if params[:handle]
      @user = User.find_by(handle: params[:handle])
    end
  end

  def index
    @users = []

    if params[:search]
      users_by_name = User.where("name LIKE ?", "%#{params[:search]}%")
      users_by_email = User.where("email LIKE ?", "%#{params[:search]}%")
      users_by_handle = User.where("handle LIKE ?", "%#{params[:search]}%")
      @users << users_by_name
      @users << users_by_email
      @users << users_by_handle

      @users = @users.flatten.uniq
    end
  end
end
