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

ActiveRecord::Schema[7.0].define(version: 2023_08_09_093659) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.string "asset_name"
    t.string "model"
    t.string "asset_tag"
    t.string "serial_no"
    t.string "category"
    t.string "status"
    t.integer "purchase_price"
    t.boolean "marked_for_disposal", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notes"
  end

  create_table "assigns", force: :cascade do |t|
    t.integer "user_id"
    t.integer "asset_id"
    t.string "location"
    t.string "department"
    t.string "assigned_by"
    t.date "assign_date"
    t.boolean "is_returned", default: false, null: false
    t.date "return_date"
    t.string "received_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.string "license_name"
    t.date "purchase_date"
    t.date "expiry_date"
    t.integer "number_of_users"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.string "department"
    t.string "designation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
