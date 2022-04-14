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

ActiveRecord::Schema[7.0].define(version: 2022_04_14_015052) do
  create_table "card_sets", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.date "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_card_sets_on_slug", unique: true
  end

  create_table "printings", force: :cascade do |t|
    t.string "name", null: false
    t.string "grimoire_id", null: false
    t.integer "tcgplayer_sku"
    t.integer "card_set_id", null: false
    t.string "signature_data", null: false
    t.string "signature", null: false
    t.string "sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_set_id"], name: "index_printings_on_card_set_id"
    t.index ["grimoire_id"], name: "index_printings_on_grimoire_id", unique: true
    t.index ["sequence"], name: "index_printings_on_sequence"
    t.index ["signature"], name: "index_printings_on_signature"
  end

  add_foreign_key "printings", "card_sets"
end
