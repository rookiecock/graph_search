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

ActiveRecord::Schema.define(version: 20140207220937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.integer  "watch_id"
    t.integer  "previous_quote_id"
    t.integer  "current_quote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alerts", ["watch_id"], name: "index_alerts_on_watch_id", using: :btree

  create_table "quotes", force: :cascade do |t|
    t.integer  "stock_id"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_trade_time"
    t.decimal  "prev_close"
  end

  add_index "quotes", ["stock_id"], name: "index_quotes_on_stock_id", using: :btree

  create_table "stocks", for