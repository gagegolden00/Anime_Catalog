class RenameFavoriteToFavorites < ActiveRecord::Migration[7.0]
  def change
    rename_table :favorites, :favorites
  end
end
