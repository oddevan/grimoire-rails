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

ActiveRecord::Schema[7.0].define(version: 2022_08_09_003434) do
  create_table "card_sets", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.date "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.string "guru_id"
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
    t.string "image_url"
    t.integer "tcgplayer_product"
    t.decimal "market_price"
    t.index ["card_set_id"], name: "index_printings_on_card_set_id"
    t.index ["grimoire_id"], name: "index_printings_on_grimoire_id", unique: true
    t.index ["sequence"], name: "index_printings_on_sequence"
    t.index ["signature"], name: "index_printings_on_signature"
  end

  create_table "staging_printings", force: :cascade do |t|
    t.string "name"
    t.string "grimoire_id"
    t.integer "tcgplayer_sku"
    t.integer "card_set_id"
    t.string "signature_data"
    t.string "signature"
    t.string "sequence"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tcgplayer_product"
    t.index ["card_set_id"], name: "index_staging_printings_on_card_set_id"
  end

  create_table "transients", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "expiration"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "displayname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "printings", "card_sets"
  add_foreign_key "staging_printings", "card_sets"
end
