module ApplicationHelper
  ## User session DRY
  # current user
  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
  end
  #create a predicate method for logged in users
  def logged_in?
    !!session[:user_id]
  end
end
