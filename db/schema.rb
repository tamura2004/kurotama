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

ActiveRecord::Schema.define(version: 20160509143119) do

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "source"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "images", ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"

  create_table "maps", force: :cascade do |t|
    t.integer  "no"
    t.string   "name"
    t.boolean  "lock"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobs", force: :cascade do |t|
    t.integer  "hp"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "weapon"
    t.integer  "armor"
    t.integer  "soul"
  end

  add_index "mobs", ["map_id"], name: "index_mobs_on_map_id"

  create_table "pcs", force: :cascade do |t|
    t.string   "name"
    t.integer  "soul"
    t.integer  "hp"
    t.integer  "fp"
    t.integer  "mp"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "job"
    t.string   "race"
    t.string   "weapon"
    t.string   "shield"
    t.string   "ring"
    t.string   "item"
    t.integer  "est"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "int"
    t.integer  "wis"
    t.integer  "cha"
    t.integer  "level"
    t.string   "armor"
  end

  add_index "pcs", ["map_id"], name: "index_pcs_on_map_id"

end
