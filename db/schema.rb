# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_18_074308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "client_name"
    t.integer "client_rut"
    t.bigint "room_id"
    t.bigint "worker_id"
    t.bigint "room_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "fee_id"
    t.time "time_start"
    t.time "time_end"
    t.index ["fee_id"], name: "index_bookings_on_fee_id"
    t.index ["room_category_id"], name: "index_bookings_on_room_category_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
    t.index ["worker_id"], name: "index_bookings_on_worker_id"
  end

  create_table "fees", force: :cascade do |t|
    t.integer "amount"
    t.boolean "is_holyday"
    t.bigint "room_category_id"
    t.bigint "time_block_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_category_id"], name: "index_fees_on_room_category_id"
    t.index ["time_block_id"], name: "index_fees_on_time_block_id"
  end

  create_table "holydays", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_categories", force: :cascade do |t|
    t.string "category"
    t.integer "momento"
    t.integer "noche"
    t.integer "hora_extra"
    t.bigint "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_room_categories_on_hotel_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "number"
    t.bigint "room_category_id"
    t.bigint "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
    t.index ["room_category_id"], name: "index_rooms_on_room_category_id"
  end

  create_table "time_blocks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_workers_on_hotel_id"
  end

  add_foreign_key "bookings", "fees"
  add_foreign_key "bookings", "room_categories"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "bookings", "users"
  add_foreign_key "bookings", "workers"
  add_foreign_key "fees", "room_categories"
  add_foreign_key "fees", "time_blocks"
  add_foreign_key "room_categories", "hotels"
  add_foreign_key "rooms", "hotels"
  add_foreign_key "rooms", "room_categories"
  add_foreign_key "workers", "hotels"
end
