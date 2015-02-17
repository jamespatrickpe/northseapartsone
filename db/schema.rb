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

ActiveRecord::Schema.define(version: 20141208143937) do

  create_table "accesses", force: true do |t|
    t.string   "username",        limit: 15
    t.string   "password_digest"
    t.boolean  "remember_me",                 default: false
    t.string   "security_level",  limit: 128, default: "NONE"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.decimal  "longitude",         precision: 10, scale: 0
    t.decimal  "latitude",          precision: 10, scale: 0
    t.integer  "contact_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "allowable_sets", force: true do |t|
    t.string   "security_level", limit: 128
    t.string   "controller",     limit: 128
    t.string   "action",         limit: 128
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_details", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "digitals", force: true do |t|
    t.string   "url",               limit: 512
    t.string   "description",       limit: 512
    t.integer  "contact_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", force: true do |t|
    t.string   "name",              limit: 128
    t.string   "description",       limit: 512
    t.string   "logo",              limit: 512
    t.integer  "contact_detail_id"
    t.integer  "access_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_connectors", force: true do |t|
    t.integer  "entity_id_one",     limit: 8
    t.string   "relationship",      limit: 128
    t.string   "relationship_type", limit: 128
    t.integer  "entity_id_two",     limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telephones", force: true do |t|
    t.integer  "digits",            limit: 8
    t.string   "description",       limit: 512
    t.integer  "contact_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "verifications", force: true do |t|
    t.string   "temp_email", limit: 128
    t.string   "hashlink",   limit: 512
    t.boolean  "verified",               default: false
    t.integer  "access_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
