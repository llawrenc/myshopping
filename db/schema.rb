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

ActiveRecord::Schema.define(version: 20150311202216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_stores", force: true do |t|
    t.integer "item_id",  null: false
    t.integer "store_id", null: false
    t.decimal "price"
  end

  add_index "item_stores", ["item_id", "store_id"], name: "index_item_stores_on_item_id_and_store_id", unique: true, using: :btree

  create_table "items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.string   "image_path"
    t.integer  "barcode"
  end

  add_index "items", ["description"], name: "index_items_on_description", using: :btree

  create_table "stores", force: true do |t|
    t.string   "store_name"
    t.string   "address1"
    t.string   "address2"
    t.integer  "suburb_id"
    t.decimal  "lat",        precision: 10, scale: 8
    t.decimal  "lng",        precision: 11, scale: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suburbs", force: true do |t|
    t.string  "suburb"
    t.string  "state"
    t.integer "post_code"
  end

  add_index "suburbs", ["post_code"], name: "index_suburbs_on_post_code", using: :btree
  add_index "suburbs", ["suburb"], name: "index_suburbs_on_suburb", using: :btree

end
