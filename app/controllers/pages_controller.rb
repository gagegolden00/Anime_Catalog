class PagesController < ApplicationController
  before_action :set_user
  def home
    set_random_titles
    set_attributes
  end
  
  def about
  end
  
  private
  
  def set_random_titles
    # Retrieve a random title from the database
    @random_titles = []
    @random_titles << Catalog.order("RANDOM()").limit(3).pluck(:title)
    @convert_title_to_obj = @random_titles.map { |title| Catalog.find_by(title: title) }
  end
  def set_attributes
    @convert_title_to_obj.each do |title|
      @genre = title.genre
      @episodes = title.episodes.to_i if title.episodes.present?
      @creator = title.user.username
    end
  end
  
  def set_user
    @user = User.find(session[:user_id]) if session[:user_id]
  end
end