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

ActiveRecord::Schema.define(version: 20160507070144) do

  create_table "abilities", force: :cascade do |t|
    t.integer  "pc_id"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "int"
    t.integer  "wis"
    t.integer  "cha"
    t.integer  "hp"
    t.integer  "fp"
    t.integer  "mp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "abilities", ["pc_id"], name: "index_abilities_on_pc_id"

  create_table "maps", force: :cascade do |t|
    t.integer  "no"
    t.string   "name"
    t.boolean  "lock"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mob_books", force: :cascade do |t|
    t.string   "name"
    t.integer  "hp"
    t.integer  "soul"
    t.integer  "attack"
    t.integer  "defence"
    t.integer  "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobs", force: :cascade do |t|
    t.integer  "hp"
    t.integer  "mob_book_id"
    t.integer  "map_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "mobs", ["map_id"], name: "index_mobs_on_map_id"
  add_index "mobs", ["mob_book_id"], name: "index_mobs_on_mob_book_id"

  create_table "moves", force: :cascade do |t|
    t.string   "name"
    t.integer  "pc_id"
    t.integer  "mob_id"
    t.integer  "boss_id"
    t.integer  "item_id"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "moves", ["boss_id"], name: "index_moves_on_boss_id"
  add_index "moves", ["item_id"], name: "index_moves_on_item_id"
  add_index "moves", ["map_id"], name: "index_moves_on_map_id"
  add_index "moves", ["mob_id"], name: "index_moves_on_mob_id"
  add_index "moves", ["pc_id"], name: "index_moves_on_pc_id"

  create_table "pcs", force: :cascade do |t|
    t.string   "name"
    t.integer  "soul"
    t.integer  "hp"
    t.integer  "fp"
    t.integer  "mp"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pcs", ["map_id"], name: "index_pcs_on_map_id"

  create_table "travels", force: :cascade do |t|
    t.integer  "pc_id"
    t.integer  "map_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "travels", ["map_id"], name: "index_travels_on_map_id"
  add_index "travels", ["pc_id"], name: "index_travels_on_pc_id"

end
