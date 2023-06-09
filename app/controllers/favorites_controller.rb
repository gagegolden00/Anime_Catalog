class FavoritesController < ApplicationController
  
  def new
    @favorite = Favorite.new
  end
  def create
    @anime = Anime.find(params[:anime_id])
    @user = User.find(params[:user_id])
    
    @favorite = Favorite.new(user: @user, anime: @anime)
    if @favorite.save
      flash[:notice] = "Added to favorites"
      redirect_to @anime
    else
      redirect_to @anime
      flash[:notice] = "Already added to favorites"
    end
  end
  
  def destroy
    set_favorite
    set_user
    @favorite.destroy
    flash[:notice] = "Removed from favorites"
    ## Flash notice here
    redirect_to @user
  end
  
  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
  
  # this is kinda dirty but will work
  def set_user
    @user = @favorite.user
  end
  def set_anime
    @anime = @favorite.anime
  end
end