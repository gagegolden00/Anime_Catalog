class AddGenreAndEpisodes < ActiveRecord::Migration[7.0]
  def change
    add_column :catalogs, :genre, :string
    add_column :catalogs, :episodes, :integer
  end
end
