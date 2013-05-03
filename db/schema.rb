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

ActiveRecord::Schema.define(:version => 20130319030755) do

  create_table "addresses", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "type"
    t.string   "label"
    t.string   "city"
    t.string   "street_address"
    t.string   "street_address_2"
    t.string   "state_code"
    t.string   "country_code"
    t.string   "zip"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "email"
    t.text     "remarks"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "aircraft_manufacturers", :force => true do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "aircraft_models", :force => true do |t|
    t.integer  "manufacturer_id"
    t.string   "name"
    t.text     "about"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "airplanes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "manufacturer_id"
    t.integer  "model_id"
    t.integer  "maintenance_schedule_id"
    t.string   "registration"
    t.string   "year"
    t.string   "serial_number"
    t.string   "fin_number"
    t.string   "title"
    t.string   "status"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "flights", :force => true do |t|
    t.integer  "airplane_id"
    t.string   "registration"
    t.string   "manufacturer_name"
    t.string   "model_name"
    t.string   "pic_name"
    t.string   "sic_name"
    t.string   "passengers"
    t.datetime "flight_started_at"
    t.datetime "wheels_up_at"
    t.datetime "wheels_down_at"
    t.datetime "flight_ended_at"
    t.float    "air_time"
    t.float    "flight_time"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "operators", :force => true do |t|
    t.integer  "owner_id"
    t.string   "name"
    t.string   "location"
    t.string   "website"
    t.string   "email"
    t.string   "facebook_page"
    t.string   "twitter_name"
    t.string   "linked_in_page"
    t.string   "stripe_user_id"
    t.string   "stripe_publishable_key"
    t.string   "stripe_access_token"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
