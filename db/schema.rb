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

ActiveRecord::Schema.define(version: 20150217043923) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movers", force: true do |t|
    t.string   "current_city"
    t.string   "moving_to"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fave_hood"
    t.string   "suggest_hood"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "full_hood_address"
  end

  create_table "neighborhoods", force: true do |t|
    t.string   "name"
    t.integer  "walk_score"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "associated_address"
  end

end
