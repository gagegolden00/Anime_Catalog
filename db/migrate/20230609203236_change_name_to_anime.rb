class ChangeNameToAnime < ActiveRecord::Migration[7.0]
  def change
    rename_table :animes , :anime
  end
end
