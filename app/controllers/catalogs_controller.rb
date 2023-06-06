
class CatalogsController < ApplicationController
  before_action :set_title, only: [:show, :edit, :destroy]
  
  def show
  end
  
  def index
    @catalogs= Catalog.all
  end
  
  def new
    @catalog = Catalog.new
  end
  
  def create
    @catalog = Catalog.new(catalog_params)
    if @catalog.save
      redirect_to @catalog
      flash[:notice] = "Save Successful!"
    else
      
      flash[:notice] = "Save Failed =( "
      redirect_to new_catalog_path
    end
  end
  
  def edit
  
  end
  def update
  
  end
  
  def destroy
    @catalog.destroy
    redirect_to catalogs_path
  end
  
  private
  
  def set_title
    @catalog = Catalog.find(params[:id])
  end
  
  def catalog_params
    params.require(:catalog).permit(:title)
  end
end
