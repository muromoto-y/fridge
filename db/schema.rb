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

ActiveRecord::Schema.define(version: 2020_09_17_121531) do

  create_table "cookings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "cooking_name", null: false
    t.text "explanation", null: false
    t.string "ingredients1", null: false
    t.string "quantity1", null: false
    t.string "ingredients2"
    t.string "quantity2"
    t.string "ingredients3"
    t.string "quantity3"
    t.string "ingredients4"
    t.string "quantity4"
    t.string "ingredients5"
    t.string "quantity5"
    t.string "ingredients6"
    t.string "quantity6"
    t.string "ingredients7"
    t.string "quantity7"
    t.string "ingredients8"
    t.string "quantity8"
    t.string "ingredients9"
    t.string "quantity9"
    t.string "ingredients0"
    t.string "quantity0"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
