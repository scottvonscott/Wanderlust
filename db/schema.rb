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

ActiveRecord::Schema.define(version: 2020_07_27_214642) do

  create_table "attractions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "destination_id", null: false
    t.integer "itinerary_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "index_attractions_on_destination_id"
    t.index ["itinerary_id"], name: "index_attractions_on_itinerary_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "attraction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attraction_id"], name: "index_bookmarks_on_attraction_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "user_id", null: false
    t.integer "attraction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attraction_id"], name: "index_comments_on_attraction_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "city"
    t.string "country"
    t.string "continent"
    t.string "primary_language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer "day_of_trip"
    t.date "date"
    t.integer "trip_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_itineraries_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.integer "days_duration"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "attractions", "destinations"
  add_foreign_key "attractions", "itineraries"
  add_foreign_key "bookmarks", "attractions"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "comments", "attractions"
  add_foreign_key "comments", "users"
  add_foreign_key "itineraries", "trips"
  add_foreign_key "trips", "users"
end
