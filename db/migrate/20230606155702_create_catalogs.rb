class CreateCatalogs < ActiveRecord::Migration[7.0]
  def change
    create_table :catalogs do |t|
      t.string :title

      t.timestamps
    end
  end
end
