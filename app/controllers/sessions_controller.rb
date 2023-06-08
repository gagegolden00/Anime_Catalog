class SessionsController < ApplicationController

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

end