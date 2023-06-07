class ChangeCatalogToTitleInCatalogs < ActiveRecord::Migration[7.0]
  def change
    rename_column :catalogs, :catalog, :title
  end
end
