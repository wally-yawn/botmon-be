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

ActiveRecord::Schema[8.0].define(version: 2025_03_11_144000) do
  create_table "battle_stats", force: :cascade do |t|
    t.integer "bot_id", null: false
    t.integer "ai_bot_id", null: false
    t.integer "winning_bot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ai_bot_id"], name: "index_battle_stats_on_ai_bot_id"
    t.index ["bot_id"], name: "index_battle_stats_on_bot_id"
    t.index ["winning_bot_id"], name: "index_battle_stats_on_winning_bot_id"
  end

  create_table "bots", force: :cascade do |t|
    t.string "name"
    t.string "weapon"
    t.string "drive"
    t.integer "battery"
    t.integer "img_id"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "battle_stats", "bots"
  add_foreign_key "battle_stats", "bots", column: "ai_bot_id"
  add_foreign_key "battle_stats", "bots", column: "winning_bot_id"
  add_foreign_key "bots", "users"
end
