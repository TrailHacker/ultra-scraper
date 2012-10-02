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

ActiveRecord::Schema.define(:version => 20121002015527) do

  create_table "races", :force => true do |t|
    t.string   "event_name"
    t.string   "event_distance"
    t.date     "event_date"
    t.string   "url"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "runners", :force => true do |t|
    t.string   "full_name"
    t.integer  "rank"
    t.string   "finishing_time"
    t.string   "club_name"
    t.integer  "year_of_birth"
    t.string   "gender"
    t.integer  "gender_rank"
    t.string   "category_name"
    t.integer  "category_rank"
    t.string   "pace_in_km"
    t.integer  "race_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
