class FavoritesController < ApplicationController
  
  
  def new
    @favorite = Favorite.new
  end
  def create
    @anime = Anime.find(params[:anime_id])
    @user = User.find(params[:user_id])
    
    @favorite = Favorite.new(user: @user, anime: @anime)
    if @favorite.save
      flash.now[:notice] = "Added to favorites"
      # redirect maybe?
    else
      flash.now[:notice] = "Something went wrong. Try again"
      #redirect or re render ?
    end
  end
  
  def destroy
    set_favorite
    @favorite.destroy
  end
  
  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
end