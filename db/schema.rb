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

ActiveRecord::Schema.define(version: 2021_02_19_094005) do

  create_table "records", force: :cascade do |t|
    t.integer "score"
    t.integer "putt"
    t.string "course"
    t.string "member"
    t.integer "weather"
    t.integer "wind"
    t.integer "hole1"
    t.integer "hole2"
    t.integer "hole3"
    t.integer "hole4"
    t.integer "hole5"
    t.integer "hole6"
    t.integer "hole7"
    t.integer "hole8"
    t.integer "hole9"
    t.integer "hole10"
    t.integer "hole11"
    t.integer "hole12"
    t.integer "hole13"
    t.integer "hole14"
    t.integer "hole15"
    t.integer "hole16"
    t.integer "hole17"
    t.integer "hole18"
    t.integer "hole1_putt"
    t.integer "hole2_putt"
    t.integer "hole3_putt"
    t.integer "hole4_putt"
    t.integer "hole5_putt"
    t.integer "hole6_putt"
    t.integer "hole7_putt"
    t.integer "hole8_putt"
    t.integer "hole9_putt"
    t.integer "hole10_putt"
    t.integer "hole11_putt"
    t.integer "hole12_putt"
    t.integer "hole13_putt"
    t.integer "hole14_putt"
    t.integer "hole15_putt"
    t.integer "hole16_putt"
    t.integer "hole17_putt"
    t.integer "hole18_putt"
    t.string "memo"
    t.string "prefecture_code"
    t.string "member1"
    t.string "member2"
    t.string "member3"
    t.integer "member1_score"
    t.integer "member2_score"
    t.integer "member3_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.date "days"
  end

  create_table "sns_credentials", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sns_credentials_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
