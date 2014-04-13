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

ActiveRecord::Schema.define(:version => 20120706120245) do

  create_table "baserecipes", :force => true do |t|
    t.string   "name"
    t.integer  "recipesource_id"
    t.string   "recipesourceref"
    t.text     "recipe"
    t.text     "note"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "batches", :force => true do |t|
    t.string   "location"
    t.float    "size"
    t.float    "abv"
    t.float    "og"
    t.integer  "brewstyle_id"
    t.integer  "brewmaster_id"
    t.integer  "brewname_id"
    t.integer  "baserecipe_id"
    t.boolean  "isfinished"
    t.text     "note"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.float    "fg"
  end

  create_table "brewmasters", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "brewnames", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "brewsteps", :force => true do |t|
    t.string   "action"
    t.text     "observation"
    t.integer  "batch_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "brewstyles", :force => true do |t|
    t.string   "style"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ingredientclasses", :force => true do |t|
    t.string   "ingredclass"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.integer  "ingredientclass_id"
    t.integer  "ingredientsource_id"
    t.text     "note"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "ingredientsources", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "phone"
    t.string   "email"
    t.string   "url"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recipesources", :force => true do |t|
    t.string   "source"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scoops", :force => true do |t|
    t.integer  "batch_id"
    t.integer  "ingredient_id"
    t.float    "quantity"
    t.string   "unit"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tastingnotes", :force => true do |t|
    t.integer  "batch_id"
    t.date     "date"
    t.string   "taster"
    t.float    "temperature"
    t.text     "color"
    t.text     "head"
    t.text     "aroma"
    t.text     "taste"
    t.text     "body"
    t.text     "finish"
    t.text     "faults"
    t.float    "quality"
    t.float    "tipicity"
    t.text     "note"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
