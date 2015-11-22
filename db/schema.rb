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

ActiveRecord::Schema.define(version: 20151122190312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "readings", force: true do |t|
    t.integer  "state"
    t.integer  "set_temp"
    t.decimal  "temp_f",     precision: 6, scale: 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "readings", ["created_at"], name: "index_readings_on_created_at", using: :btree

  create_table "set_temps", force: true do |t|
    t.integer  "mode"
    t.integer  "temp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
