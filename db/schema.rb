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

ActiveRecord::Schema.define(version: 2021_05_04_184901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "core_products", force: :cascade do |t|
    t.string "core_number"
    t.string "internal_title"
    t.string "vendor"
    t.string "vendor_title"
    t.string "vendor_sku"
    t.string "backup_vendor"
    t.string "backup_vendor_sku"
    t.string "restockable"
    t.string "vendor_order_unit"
    t.integer "vendor_case_pack"
    t.integer "moq"
    t.integer "buffer_days"
    t.integer "minimum_level"
    t.string "product_url"
    t.string "note_for_next_order"
    t.integer "case_pack"
    t.integer "pieces_per_internal_box"
    t.integer "boxes_per_case"
    t.string "tags_and_info"
    t.string "tag_one"
    t.string "tag_two"
    t.string "tag_three"
    t.string "tag_four"
    t.string "hazmat"
    t.string "active"
    t.datetime "ignore_until"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "warehouse"
    t.string "location"
    t.integer "quantity"
    t.bigint "core_product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["core_product_id"], name: "index_locations_on_core_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "locations", "core_products"
end
