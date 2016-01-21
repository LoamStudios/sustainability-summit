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

ActiveRecord::Schema.define(version: 20160120011010) do

  enable_extension "plpgsql"
  
  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "organization"
    t.string   "title"
    t.string   "organization2"
    t.string   "title2"
    t.text     "description"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "email",                          default: "",    null: false
    t.string   "encrypted_password", limit: 128, default: "",    null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, default: "",    null: false
    t.boolean  "admin",                          default: false
  end

  add_index "people", ["email"], name: "index_people_on_email"
  add_index "people", ["remember_token"], name: "index_people_on_remember_token"

  create_table "people_sessions", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "session_id"
  end

  add_index "people_sessions", ["person_id"], name: "index_people_sessions_on_person_id"
  add_index "people_sessions", ["session_id"], name: "index_people_sessions_on_session_id"

  create_table "people_teams", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "team_id"
  end

  add_index "people_teams", ["person_id"], name: "index_people_teams_on_person_id"
  add_index "people_teams", ["team_id"], name: "index_people_teams_on_team_id"

  create_table "sessions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "location"
    t.integer  "timeslot_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsors_sponsorships", id: false, force: :cascade do |t|
    t.integer "sponsor_id"
    t.integer "sponsorship_id"
  end

  add_index "sponsors_sponsorships", ["sponsor_id"], name: "index_sponsors_sponsorships_on_sponsor_id"
  add_index "sponsors_sponsorships", ["sponsorship_id"], name: "index_sponsors_sponsorships_on_sponsorship_id"

  create_table "sponsorships", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "name"
    t.integer  "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
