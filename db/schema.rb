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

ActiveRecord::Schema.define(version: 2018_09_19_150813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affair_contacts", force: :cascade do |t|
    t.integer "contact_id"
    t.integer "affair_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "affairs", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "website"
    t.date "date"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "title"
    t.string "pro_designation"
    t.string "company"
    t.string "location"
    t.string "phone"
    t.string "website"
    t.string "linked_in"
    t.string "facebook"
    t.string "twitter"
    t.string "other_social"
    t.text "notes"
    t.string "avatar"
    t.integer "user_id"
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
    t.string "fname"
    t.string "lname"
    t.string "location"
    t.string "title"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
