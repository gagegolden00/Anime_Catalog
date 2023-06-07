class AddAssociation < ActiveRecord::Migration[7.0]
  def change
    add_column :catalogs, :user_id, :integer
  end
end
