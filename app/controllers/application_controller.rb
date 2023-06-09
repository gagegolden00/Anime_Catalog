class ApplicationController < ActionController::Base
  # Pagination
  include Pagy::Backend
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
