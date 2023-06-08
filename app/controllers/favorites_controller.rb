class FavoritesController < ActionController
  
  def create
    @user = User.find(params[:user_id])
    @anime = Anime.find(params[:id])
    @favorites = Favorites.new(user: @user, anime: @anime)
    
    if @favorites.save
      flash[:notice] = "Added to favorites"
      # redirect maybe?
    else
      flash[:notice] = "Something went wrong. Try again"
      #redirect or re render ?
    end
    
  end
  
end