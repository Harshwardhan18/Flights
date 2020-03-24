# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_23_142023) do

  create_table "aeroplanes", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.decimal "e_fare"
    t.decimal "b_fare"
    t.decimal "f_fare"
    t.integer "e_row"
    t.integer "e_col"
    t.integer "b_row"
    t.integer "b_col"
    t.integer "f_row"
    t.integer "f_col"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_passengers_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "source"
    t.string "destination"
    t.date "date_of_journey"
    t.string "seat_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "seat_number"
    t.decimal "total_cost"
    t.string "pnr"
    t.integer "passenger_id"
    t.integer "trip_id"
    t.index ["passenger_id"], name: "index_tickets_on_passenger_id"
    t.index ["trip_id"], name: "index_tickets_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "source"
    t.string "destination"
    t.date "date_of_dep"
    t.date "time_of_arr"
    t.integer "aeroplane_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "b_fare"
    t.decimal "e_fare"
    t.decimal "f_fare"
    t.datetime "time_of_dep"
    t.index ["aeroplane_id"], name: "index_trips_on_aeroplane_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "passengers", "users"
  add_foreign_key "tickets", "passengers"
  add_foreign_key "tickets", "trips"
  add_foreign_key "trips", "aeroplanes"
end
