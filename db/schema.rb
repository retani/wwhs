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

ActiveRecord::Schema.define(:version => 20131021201017) do

  create_table "images", :force => true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pages", ["slug"], :name => "index_pages_on_slug", :unique => true

  create_table "uchronias", :force => true do |t|
    t.integer  "image_id"
    t.text     "media_embed"
    t.string   "title"
    t.text     "pod"
    t.text     "description"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "hidden",      :default => false
    t.string   "slug"
  end

  create_table "uchronias_uchronists", :force => true do |t|
    t.integer "uchronia_id"
    t.integer "uchronist_id"
  end

  create_table "uchronists", :force => true do |t|
    t.integer  "image_id"
    t.text     "media_embed"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "hidden",      :default => false
    t.string   "slug"
  end

  create_table "user_biographies", :force => true do |t|
    t.date     "birthday"
    t.string   "birthplace"
    t.string   "parents"
    t.string   "childhood"
    t.boolean  "youth_1"
    t.boolean  "youth_2"
    t.boolean  "youth_3"
    t.boolean  "youth_4"
    t.string   "education"
    t.string   "travel"
    t.integer  "job_changes"
    t.string   "romance"
    t.string   "crisis"
    t.boolean  "hobby"
    t.string   "religion"
    t.boolean  "zurich"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "owns_boat",   :default => false
    t.boolean  "owns_house",  :default => false
    t.boolean  "owns_gold",   :default => false
    t.string   "name"
    t.string   "sex"
    t.boolean  "on_tour",     :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
