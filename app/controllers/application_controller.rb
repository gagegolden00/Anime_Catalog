class ApplicationController < ActionController::Base
  # Pagination
  include Pagy::Backend
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def logged_in?
    !!session[:user_id]
  end
  # restrict actions to appropriate users
  def require_user
    unless logged_in?
      flash[:notice] = "You must be logged in to make any changes."
      redirect_to login_url
    
    end
  end
end
