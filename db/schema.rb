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

ActiveRecord::Schema.define(version: 20211107081421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaign_tabs", force: :cascade do |t|
    t.string   "title"
    t.string   "purpose"
    t.integer  "estimated_duration"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_campaign_tabs_on_user_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "commented_on_type"
    t.integer  "commented_on_id"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "campaign_tab_id"
    t.integer  "user_id"
    t.index ["campaign_tab_id"], name: "index_tags_on_campaign_tab_id", using: :btree
  end

  create_table "todos", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "campaign_tab_id"
    t.integer  "user_id"
    t.index ["campaign_tab_id"], name: "index_todos_on_campaign_tab_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "campaign_id"
    t.integer  "user_id"
    t.integer  "campaign_tab_id"
    t.integer  "expert_id"
    t.index ["campaign_id"], name: "index_topics_on_campaign_id", using: :btree
    t.index ["campaign_tab_id"], name: "index_topics_on_campaign_tab_id", using: :btree
    t.index ["user_id"], name: "index_topics_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_type"
    t.string   "username"
    t.string   "status"
    t.string   "profession"
    t.string   "service"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "campaign_tabs", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "tags", "campaign_tabs"
  add_foreign_key "todos", "campaign_tabs"
  add_foreign_key "topics", "campaign_tabs"
  add_foreign_key "topics", "campaign_tabs", column: "campaign_id"
  add_foreign_key "topics", "users"
end
