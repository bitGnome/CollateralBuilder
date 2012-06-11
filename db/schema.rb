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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120611214428) do

  create_table "catalogs", :force => true do |t|
    t.string   "name"
    t.integer  "page_count"
    t.date     "drop_date"
    t.string   "size"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "page_id"
    t.integer  "asset_id"
    t.string   "asset_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "section_name"
    t.integer  "order"
    t.integer  "book_id"
    t.string   "book_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "style_number"
    t.string   "name"
    t.decimal  "weight_oz"
    t.decimal  "price"
    t.string   "size_range"
    t.text     "copy"
    t.string   "fit"
    t.string   "country_of_origin"
    t.string   "team"
    t.string   "bluesign"
    t.string   "polartec"
    t.string   "goretex"
    t.string   "e_style"
    t.string   "upf"
    t.string   "status"
    t.integer  "season_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.date     "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
