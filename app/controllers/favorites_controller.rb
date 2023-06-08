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
      # redirect maybe?
    else
      flash[:notice] = "Something went wrong. Try again"
      #redirect or re render ?
    end
    
  end
  
end