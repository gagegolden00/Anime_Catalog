class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
 
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.password == @user.password_confirmation
      if @user.save
        flash[:notice] = "You have successfully signed up, #{@user.username}!"
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render 'new'
      end
    else
      flash.now[:notice] = "Passwords don't match!"
      redirect_to new_user_url
    end
  end

  
  # def edit
  # @user = User.find(params[:id])
  #end
  #def update
  #  @user = User.find(params[:id])
  #  if @user.update(whitelist_params)
  #    redirect_to edit_user_path, notice: "update successful"
  #  end
  #end

  private
  
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
  
end