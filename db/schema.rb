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

ActiveRecord::Schema.define(version: 2020_12_04_013452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coords", force: :cascade do |t|
    t.float "lat"
    t.float "lng"
    t.bigint "landmark_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["landmark_id"], name: "index_coords_on_landmark_id"
  end

  create_table "landmarks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "address"
    t.string "img_url"
    t.string "bio"
    t.string "genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_landmarks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "hometown"
    t.string "img_url"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "coords", "landmarks"
  add_foreign_key "landmarks", "users"
end
