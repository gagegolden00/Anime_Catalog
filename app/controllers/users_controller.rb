class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :show]
  
  def show
  end
 
  def new
    @user = User.new
  end
  
  def create
    # can use an if else to display password mismatch error but
    # that is not the way this is done so will work on this later. turbo-frames issue.
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up, #{@user.username}!"
      # creates the session once a user has signed up
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:notice] = 'problem signing up'
      redirect_to '/users/new'
    end
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "Update successful"
    else
      redirect_to edit_user_path(@user), notice: "Error editing"
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
  
  def find_user
    @user = User.find(params[:id])
  end
  
end