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

ActiveRecord::Schema.define(version: 20150411133714) do

  create_table "attributes", force: :cascade do |t|
    t.integer  "attributable_id"
    t.string   "attributable_type"
    t.string   "name"
    t.string   "sex"
    t.boolean  "is_neuter"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "attributes", ["attributable_type", "attributable_id"], name: "index_attributes_on_attributable_type_and_attributable_id", using: :btree

  create_table "cat_polies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "sex"
    t.boolean  "is_neuter"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dog_polies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "sex"
    t.boolean  "is_neuter"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fish", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "sex"
    t.boolean  "is_neuter"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fish_polies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "describable_id"
    t.string   "describable_type"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "notes", ["describable_type", "describable_id"], name: "index_notes_on_describable_type_and_describable_id", using: :btree

end
