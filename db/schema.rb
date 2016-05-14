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

ActiveRecord::Schema.define(version: 20160511112337) do

  create_table "characters", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.string   "map_name"
    t.string   "image"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "int"
    t.integer  "wis"
    t.integer  "cha"
    t.integer  "level"
    t.integer  "soul"
    t.integer  "hp"
    t.integer  "fp"
    t.string   "job_name"
    t.string   "race_name"
    t.string   "weapon_name"
    t.string   "shield_name"
    t.string   "armor_name"
    t.string   "spell_name"
    t.string   "ring_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.string   "map_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
