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

ActiveRecord::Schema.define(version: 2019_11_25_221438) do

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "given_name"
    t.string "family_name"
    t.string "nickname", limit: 10
    t.boolean "unverified_email"
    t.boolean "status"
    t.string "encrypted_password"
    t.datetime "password_expires_at"
    t.boolean "daily_alerts"
    t.time "daily_alerts_at", precision: 0
    t.integer "login_attempts"
    t.integer "max_login_attempts"
    t.time "start_online_at", precision: 3
    t.time "finish_online_at"
    t.boolean "auto_online"
    t.date "birthday"
    t.binary "photo"
    t.decimal "cashback", precision: 18
    t.decimal "credit", precision: 18, scale: 2
    t.float "starts"
    t.float "max_starts"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["nickname"], name: "index_accounts_on_nickname"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 50
    t.boolean "relevant"
    t.decimal "score", precision: 4, scale: 3
    t.decimal "market_value", precision: 6, scale: 2
    t.text "notes"
    t.datetime_basic "created_at"
    t.datetime_basic "updated_at"
    t.image "legacy_photo", limit: 2147483647
    t.datetime_basic "available_at"
    t.datetime_basic "expires_at"
  end

  create_table "customs", primary_key: "remote_id", force: :cascade do |t|
    t.string "task"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "story_id"
    t.integer "rate"
    t.string "autor"
    t.decimal "donation", precision: 18
    t.decimal "market_value", precision: 6, scale: 2
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_reviews_on_story_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id"
    t.string "ip_address"
    t.decimal "latitude", precision: 12, scale: 6
    t.decimal "longitude", precision: 12, scale: 6
    t.boolean "ldap_auth"
    t.time "reset_time"
    t.datetime "blocked_at"
    t.text "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "category_id"
    t.string "title"
    t.boolean "active"
    t.datetime "publish_on", precision: 3
    t.integer "likes", default: 1
    t.integer "dislikes", default: 0
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_stories_on_account_id"
    t.index ["category_id"], name: "index_stories_on_category_id"
  end

  add_foreign_key "reviews", "stories"
  add_foreign_key "stories", "accounts"
  add_foreign_key "stories", "categories"
end
