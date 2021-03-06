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

ActiveRecord::Schema.define(version: 20161217200418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaign_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "campaign_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "campaign_phone"
    t.string   "campaign_keyword"
    t.string   "destination_url"
    t.string   "campaign_description"
    t.boolean  "active"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "short_url_logs", force: :cascade do |t|
    t.integer  "short_url_id"
    t.integer  "ip_address"
    t.string   "utm_campaign"
    t.string   "utm_medium"
    t.string   "utm_source"
    t.string   "utm_term"
    t.string   "utm_content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "short_urls", force: :cascade do |t|
    t.integer  "campaign_id"
    t.string   "short_url"
    t.string   "destination_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "phone"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "visitors", force: :cascade do |t|
    t.string   "phone"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "subscribe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
