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

ActiveRecord::Schema[8.0].define(version: 2025_11_28_224326) do
  create_table "gacha_cards", force: :cascade do |t|
    t.string "name", null: false
    t.integer "rarity", default: 0, null: false
    t.integer "weight", default: 1, null: false
    t.text "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rarity"], name: "index_gacha_cards_on_rarity"
    t.index ["weight"], name: "index_gacha_cards_on_weight"
  end
end
