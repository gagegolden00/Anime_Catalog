class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :show, :destroy]
  before_action :require_same_user, only: [:show, :create, :update, :edit, :destroy]
  before_action :already_logged_in, only: [:new]
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
  
  def destroy
    if User.exists?(1)
      Anime.where(user_id: @user.id).update_all(user_id: 1)
      @user.favorites.destroy_all
      @user.destroy
      session.destroy
      flash[:notice] = "Account successfully deleted"
      redirect_to root_path
    else
      flash[:notice] = "There was a problem with re-assigning the ids"
    end
  end
  
  def confirm_profile_delete
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
  def find_user
    @user = User.find(params[:id])
  end
  def require_same_user
    if current_user != @user
      flash[:notice] = 'Sorry this action is not allowed for you.'
      redirect_to @user
    end
  end
  def already_logged_in
    if !!current_user
      flash[:notice] = 'Already logged in'
      redirect_to root_path
    end
  end
  
end