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

ActiveRecord::Schema.define(version: 20160311001706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "average_caches", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "avg",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contractors", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "scope"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.float    "Lat"
    t.float    "Lng"
    t.integer  "phone",      limit: 8
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "scope"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.float    "Lat"
    t.float    "Lan"
  end

  create_table "overall_averages", force: true do |t|
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "overall_avg",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type", using: :btree
  add_index "rates", ["rater_id"], name: "index_rates_on_rater_id", using: :btree

  create_table "rating_caches", force: true do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            null: false
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type", using: :btree

  create_table "searches", force: true do |t|
    t.integer  "customer_id"
    t.string   "address"
    t.string   "scope"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "searches", ["customer_id"], name: "index_searches_on_customer_id", using: :btree

  create_table "service_areas", force: true do |t|
    t.float    "lat"
    t.float    "long"
    t.string   "scope"
    t.float    "radi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
