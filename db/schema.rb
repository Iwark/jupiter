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

ActiveRecord::Schema.define(version: 20150201074238) do

  create_table "fields", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.integer  "user_id"
    t.integer  "job_id",          default: 1
    t.integer  "field_id"
    t.string   "type",                          null: false
    t.string   "name",                          null: false
    t.string   "image"
    t.integer  "str",             default: 1
    t.integer  "int",             default: 1
    t.integer  "dex",             default: 1
    t.integer  "vit",             default: 1
    t.integer  "luk",             default: 1
    t.integer  "ego",             default: 1
    t.integer  "present_hp",      default: 400
    t.integer  "max_hp",          default: 400
    t.integer  "condition",       default: 0
    t.integer  "exp",             default: 0
    t.integer  "level",           default: 1
    t.integer  "gold",            default: 500
    t.integer  "wins",            default: 0
    t.integer  "continuous_wins", default: 0
    t.integer  "status_points",   default: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "units", ["field_id"], name: "index_units_on_field_id", using: :btree
  add_index "units", ["job_id"], name: "index_units_on_job_id", using: :btree
  add_index "units", ["type"], name: "index_units_on_type", using: :btree
  add_index "units", ["user_id"], name: "index_units_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.integer  "current_character_id"
    t.string   "name",                 default: "", null: false
    t.string   "encrypted_password",   default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree

end
