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

ActiveRecord::Schema.define(version: 20170925204403) do

  create_table "bookings", force: :cascade do |t|
    t.text     "details"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.string   "event_type"
    t.date     "date"
    t.string   "bar_type"
    t.string   "add_ons"
    t.string   "address"
    t.string   "guests"
    t.integer  "start_time"
    t.boolean  "permit"
    t.text     "additional"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "subtotal"
    t.integer  "hours"
    t.string   "coupon_code"
    t.string   "beer"
    t.string   "wine"
    t.string   "spirit"
    t.string   "cocktail"
    t.boolean  "glassware"
    t.boolean  "bar_rental"
    t.boolean  "virgin"
    t.text     "other"
    t.boolean  "passed_drinks"
    t.boolean  "beer_corkage"
    t.boolean  "wine_corkage"
    t.boolean  "spirit_corkage"
    t.boolean  "catering"
    t.text     "delivery_details"
    t.integer  "user_id"
    t.boolean  "insurance"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
