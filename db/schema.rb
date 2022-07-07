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

ActiveRecord::Schema[7.0].define(version: 2022_07_06_220138) do
  create_table "collections", force: :cascade do |t|
    t.integer "user_id"
    t.integer "play_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["play_id"], name: "index_collections_on_play_id"
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "monologues", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.string "genre"
    t.string "length"
    t.boolean "is_copy_available"
    t.string "gender"
    t.string "char_name"
    t.integer "age"
    t.integer "play_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["play_id"], name: "index_monologues_on_play_id"
  end

  create_table "plays", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "genre"
    t.string "length"
    t.integer "num_character"
    t.string "time_period"
    t.boolean "copy_avail"
    t.string "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
