
class CatalogsController < ApplicationController
  before_action :set_title, only: [:show, :edit, :destroy, :update]
  
  def show
  end
  
  def index
    @pagy, @catalogs= pagy(Catalog.all)
    
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
    if @catalog.update(catalog_params)
      redirect_to @catalog
      flash[:notice] = "Update Successful!"
    else
      flash[:notice] = "Update Failed =( "
      render 'edit'
    end
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
    params.require(:catalog).permit(:title, :genre, :episodes)
  end
end
