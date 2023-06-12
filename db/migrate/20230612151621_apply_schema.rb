class ApplySchema < ActiveRecord::Migration[7.0]
  def change
    
    # old schema file used as migration to re-create the database structure.
    #
    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"
    
    create_table "all_anime", force: :cascade do |t|
      t.string "title"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "genre"
      t.integer "episodes"
      t.bigint "user_id"
      t.index ["user_id"], name: "index_all_anime_on_user_id"
    end
    
    create_table "favorites", force: :cascade do |t|
      t.bigint "user_id", null: false
      t.bigint "anime_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["anime_id"], name: "index_favorites_on_anime_id"
      t.index ["user_id"], name: "index_favorites_on_user_id"
    end
    
    create_table "users", force: :cascade do |t|
      t.string "username"
      t.string "password_digest"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    
    add_foreign_key "all_anime", "users"
    add_foreign_key "favorites", "all_anime", column: "anime_id"
    add_foreign_key "favorites", "users"
  end
end
