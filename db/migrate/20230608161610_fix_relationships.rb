class FixRelationships < ActiveRecord::Migration[7.0]
  def change
    remove_column :catalogs, :user_id
    add_reference :catalogs, :user, foreign_key: true
  end
end
