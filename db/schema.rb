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

ActiveRecord::Schema.define(:version => 20110723162114) do

  create_table "drivers", :force => true do |t|
    t.string   "name"
    t.string   "license"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracking_modules", :force => true do |t|
    t.integer  "number"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_states", :force => true do |t|
    t.datetime "timestamp"
    t.integer  "location"
    t.float    "speed"
    t.integer  "heading"
    t.integer  "odometer"
    t.integer  "hourmeter"
    t.float    "battery_voltage"
    t.boolean  "gps_active"
    t.boolean  "ignition"
    t.integer  "active_sensors"
    t.integer  "active_actuators"
    t.boolean  "panic"
    t.boolean  "speed_violation"
    t.boolean  "geofence_border_violation"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "vehicle_id"
    t.integer  "driver_id"
    t.integer  "tracking_module_id"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "registration_plate"
    t.string   "renavam"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
