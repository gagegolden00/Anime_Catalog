class ChangeTableName < ActiveRecord::Migration[7.0]
  def change
    rename_table :anime, :all_anime
  end
end
