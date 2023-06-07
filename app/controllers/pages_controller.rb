class PagesController < ApplicationController
  
  def home
    set_random_titles
    set_genre
  end
  
  def about
  end
  
  private
  
  def set_random_titles
    # Retrieve a random title from the database
    @random_titles = []
    @random_titles << Catalog.order("RANDOM()").limit(3).pluck(:title)
    @converting_back_to_obj = @random_titles.map { |title| Catalog.find_by(title: title) }
  end
  def set_genre
    @converting_back_to_obj.each do |title|
      @genre = title.genre
      end
  end
end