class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :default_meta

  def authenticate_admin
    current_user && current_user.admin?
  end

  def default_meta
    @meta_description = "Ordervore, save your orders and find your friend's orders."
    @meta_keywords = 'Ordervore,Restaurant Orders,Restaurant,Save,Orders'
    @meta_author = 'Ordervore'
  end
end
