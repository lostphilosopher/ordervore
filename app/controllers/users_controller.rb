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
      search = params[:search].downcase
      users_by_name = User.where('LOWER(name) LIKE ?', "%#{search}%")
      users_by_email = User.where('LOWER(email) LIKE ?', "%#{search}%")
      users_by_handle = User.where('LOWER(handle) LIKE ?', "%#{search}%")
      @users << users_by_name
      @users << users_by_email
      @users << users_by_handle

      @users = @users.flatten.uniq
    end
  end
end
