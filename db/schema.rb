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

ActiveRecord::Schema[7.0].define(version: 2023_10_11_024531) do
  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stats_id"
    t.index ["stats_id"], name: "index_champions_on_stats_id"
  end

  create_table "stats", force: :cascade do |t|
    t.string "games_played"
    t.float "kda"
    t.float "win_rate"
    t.float "pick_rate"
    t.float "ban_rate"
    t.float "cs"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "champion_id", null: false
    t.index ["champion_id"], name: "index_stats_on_champion_id"
  end

  create_table "team_comps", force: :cascade do |t|
    t.integer "champion_one_id", null: false
    t.integer "champion_two_id", null: false
    t.integer "champion_three_id", null: false
    t.integer "champion_four_id", null: false
    t.integer "champion_five_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["champion_five_id"], name: "index_team_comps_on_champion_five_id"
    t.index ["champion_four_id"], name: "index_team_comps_on_champion_four_id"
    t.index ["champion_one_id"], name: "index_team_comps_on_champion_one_id"
    t.index ["champion_three_id"], name: "index_team_comps_on_champion_three_id"
    t.index ["champion_two_id"], name: "index_team_comps_on_champion_two_id"
  end

  add_foreign_key "champions", "stats", column: "stats_id"
  add_foreign_key "stats", "champions"
  add_foreign_key "team_comps", "champion_fives", column: "champion_five_id"
  add_foreign_key "team_comps", "champion_fours"
  add_foreign_key "team_comps", "champion_ones"
  add_foreign_key "team_comps", "champion_threes"
  add_foreign_key "team_comps", "champion_twos"
end
