# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091121194026) do

  create_table "ballots", :force => true do |t|
    t.integer  "group_id"
    t.integer  "event_id"
    t.string   "rstring"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "group_id"
    t.string   "ename"
    t.string   "edescription"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gadmins", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "gname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "andrewID"
    t.string   "encryptedPassword"
    t.boolean  "admin?",     :default => false
    t.datetime "last_login"
    t.string   "email"
    t.string   "year"
    t.string   "college"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voters", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.decimal  "vflag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
