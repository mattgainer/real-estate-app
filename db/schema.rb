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

ActiveRecord::Schema.define(version: 20151118034151) do

  create_table "houses", force: :cascade do |t|
    t.text     "description"
    t.integer  "year_built"
    t.integer  "square_feet"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.boolean  "availability",                          default: true
    t.decimal  "price",        precision: 10, scale: 2
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.float    "latitude"
    t.float    "longitude"
  end

end
