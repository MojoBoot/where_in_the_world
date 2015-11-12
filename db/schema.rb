# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151112072246) do

  create_table "corkboards", force: :cascade do |t|
    t.string   "title"
    t.text     "comment"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "corkboards", ["location_id"], name: "index_corkboards_on_location_id"

  create_table "locations", force: :cascade do |t|
    t.string   "continent"
    t.integer  "population"
    t.string   "image"
    t.text     "description"
    t.integer  "happiness"
    t.integer  "economic_index"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "language"
    t.string   "city"
    t.string   "nation"
    t.string   "visa_info"
    t.string   "job_info"
    t.string   "rental_info"
    t.integer  "rent"
    t.integer  "disp_money"
    t.integer  "utilities"
    t.integer  "trans"
    t.decimal  "meal_cost"
    t.decimal  "wine_cost"
    t.decimal  "cheese_cost"
    t.decimal  "orange_cost"
    t.decimal  "bread_cost"
    t.decimal  "cappuccino_cost"
    t.integer  "quality_life"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
