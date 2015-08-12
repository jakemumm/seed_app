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

ActiveRecord::Schema.define(version: 20150807180640) do

  create_table "orders", force: :cascade do |t|
    t.string   "date"
    t.text     "content"
    t.integer  "seedslot_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "orders", ["seedslot_id"], name: "index_orders_on_seedslot_id"

  create_table "seedrecs", force: :cascade do |t|
    t.integer  "prod_num"
    t.string   "title"
    t.integer  "par"
    t.integer  "last_year"
    t.integer  "this_year"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "sku"
    t.integer  "add_to_order"
    t.boolean  "in_stock",     default: true
  end

  create_table "seedslots", force: :cascade do |t|
    t.string   "title"
    t.integer  "par"
    t.integer  "last_year"
    t.integer  "this_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seedslots_seedrecs", id: false, force: :cascade do |t|
    t.integer "seedslot_id"
    t.integer "seedrec_id"
  end

  add_index "seedslots_seedrecs", ["seedrec_id"], name: "index_seedslots_seedrecs_on_seedrec_id"
  add_index "seedslots_seedrecs", ["seedslot_id"], name: "index_seedslots_seedrecs_on_seedslot_id"

end
