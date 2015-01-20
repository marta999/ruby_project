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

ActiveRecord::Schema.define(version: 20150120202846) do

  create_table "committees", force: :cascade do |t|
    t.string   "name"
    t.integer  "logo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "committees", ["logo_id"], name: "index_committees_on_logo_id"

  create_table "constituencies", force: :cascade do |t|
    t.string   "name"
    t.integer  "number_of_voters"
    t.integer  "voivodeship_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "constituencies", ["voivodeship_id"], name: "index_constituencies_on_voivodeship_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "login"
    t.string   "password"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voivodeships", force: :cascade do |t|
    t.string   "name"
    t.integer  "number_of_seats"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "number"
    t.integer  "number_of_invalid"
    t.integer  "constituency_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "votes", ["constituency_id"], name: "index_votes_on_constituency_id"

end
