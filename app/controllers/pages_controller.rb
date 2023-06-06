class PagesController < ApplicationController
  
  def home
    set_random_titles
  end
  
  def about
  
  end
  
  private
  
  def set_random_titles
    # Retrieve a random title from the database
    @random_titles = []
    @random_titles << Catalog.order("RANDOM()").limit(3).pluck(:title)
  end
end