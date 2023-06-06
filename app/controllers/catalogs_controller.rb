class CatalogsController < ApplicationController

  def show
    @title = Catalog.find(params[:id])
  end
  
  def index
    @titles = Catalog.all()
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog
      @catalog = Catalog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def catalog_params
      params.require(:catalog).permit(:title)
    end
end
