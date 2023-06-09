class SessionsController < ApplicationController
  before_action :require_unique_session, only: [:create]
  def create
    @user = User.find_by(username: params[:username])
    ## Authenticate user credentials
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
      flash[:notice] = "Successfully logged in"
    else
      flash[:notice] = "Login Failed "
      redirect_to '/login'
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path
    flash[:notice] = "Successfully logged out"
  end
  
  private
  
  def require_unique_session
    if logged_in?
      flash[:notice] = "you are already logged in"
      redirect_to current_user
    end
  end
end