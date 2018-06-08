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
end
