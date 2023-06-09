class AnimesController < ApplicationController
  before_action :set_title, only: [:show, :edit, :destroy, :update]
  before_action :set_user
  def show
  end
  def index
    @pagy, @animes = pagy(Anime.all)
  end
  def new
    @anime = Anime.new
  end
  def create
    @anime = Anime.new(anime_params)
    @anime.user = @user
    if @anime.save
      redirect_to @anime
      flash[:notice] = "Save Successful!"
    else
      flash[:notice] = "Save Failed =( "
      redirect_to new_anime_path
    end
  end
  def edit
  end
  def update
    if @anime.update(anime_params)
      redirect_to @anime
      flash[:notice] = "Update Successful!"
    else
      flash[:notice] = "Update Failed =( "
      render 'edit'
    end
  end
  def destroy
    if @anime.user == current_user
      @anime.favorites.destroy_all
      @anime.destroy
      flash[:notice] = "Anime successfully deleted!"
    else
      flash[:notice] = "You are not authorized to delete this anime."
    end
    redirect_to animes_path
  end
  
  private
  
  def set_title
    @anime = Anime.find(params[:id])
  end
  def anime_params
    params.require(:anime).permit(:title, :genre, :episodes, :user_id)
  end
  def set_user
    @user = User.find(session[:user_id]) if session[:user_id]
  end
  
end
