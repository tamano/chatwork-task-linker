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

ActiveRecord::Schema.define(version: 20150314153907) do

  create_table "notify_rules", force: :cascade do |t|
    t.integer  "target_room_id",   null: false
    t.integer  "target_member_id", null: false
    t.time     "target_time",      null: false
    t.string   "message",          null: false
    t.integer  "target_day"
    t.integer  "target_date"
    t.string   "type"
    t.datetime "executing_at"
    t.datetime "last_executed_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "notify_rules", ["executing_at"], name: "index_notify_rules_on_executing_at"
  add_index "notify_rules", ["type"], name: "index_notify_rules_on_type"

  create_table "tasks", force: :cascade do |t|
    t.integer  "user_id",          null: false
    t.integer  "chatwork_task_id", null: false
    t.integer  "limit_time"
    t.text     "body"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

end
