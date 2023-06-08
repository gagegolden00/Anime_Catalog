class CreateManyToMany < ActiveRecord::Migration[7.0]
  def change
    rename_table :catalogs, :anime
    
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :anime, null: false, foreign_key: true
      t.timestamps
    end
  end
end
