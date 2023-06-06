
class CatalogsController < ApplicationController
  before_action :set_title, only: [:show]
  
  def show
  end
  
  def index
    @titles = Catalog.all
  end
  
  def new
    @title = Catalog.new
  end
  
  def create
    @title = Catalog.new(catalog_params)
    if @title.save
      redirect_to @title
      flash[:notice] = "Save Successful!"
    else
      render :new
    end
  end
  
  private
  
  def set_title
    @title = Catalog.find(params[:id])
  end
  
  def catalog_params
    params.require(:catalog).permit(:title)
  end
end
