# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_12_234856) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anime", id: :serial, force: :cascade do |t|
    t.string "title", limit: 150, null: false
    t.string "genre", limit: 75, null: false
    t.integer "episodes"
    t.datetime "created_at", precision: nil, default: -> { "now()" }
    t.datetime "updated_at", precision: nil, default: -> { "now()" }
    t.integer "user_id"
    t.check_constraint "episodes >= 1 AND episodes <= 2000", name: "anime_episodes_check"
  end

  create_table "favorites", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "anime_id", null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "username", limit: 200, null: false
    t.string "password_digest", limit: 255, null: false
    t.datetime "created_at", default: "2023-06-12 23:50:20", null: false
    t.datetime "updated_at", default: "2023-06-12 23:50:20", null: false
  end

  add_foreign_key "anime", "users", name: "anime_user_id_fkey"
  add_foreign_key "favorites", "anime", name: "favorites_anime_id_fkey"
  add_foreign_key "favorites", "users", name: "favorites_user_id_fkey"
end
