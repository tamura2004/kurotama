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

ActiveRecord::Schema.define(version: 20160515075555) do

  create_table "characters", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.string   "map"
    t.string   "bonefire"
    t.string   "image"
    t.integer  "log_id"
    t.integer  "est"
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
    t.string   "job"
    t.string   "race"
    t.string   "weapon"
    t.string   "shield"
    t.string   "armor"
    t.string   "spell"
    t.string   "ring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "type"
    t.string   "owner"
    t.string   "image"
    t.string   "name"
    t.integer  "level"
    t.integer  "soul"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.string   "level"
    t.string   "title"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "right_id"
    t.string   "right_type"
    t.integer  "left_id"
    t.string   "left_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
