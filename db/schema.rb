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

ActiveRecord::Schema.define(:version => 20120731192350) do

  create_table "athletes", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "password_digest"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "remember_token"
  end

  add_index "athletes", ["remember_token"], :name => "index_athletes_on_remember_token"

  create_table "workouts", :force => true do |t|
    t.string   "summary"
    t.string   "description"
    t.date     "date"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "athlete_id"
    t.integer  "miles",       :default => 0
  end

  add_index "workouts", ["athlete_id", "created_at"], :name => "index_workouts_on_athlete_id_and_created_at"

end
