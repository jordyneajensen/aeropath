# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_11_07_122625) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aircraft", force: :cascade do |t|
    t.string "registration"
    t.string "make_model"
    t.float "max_speed"
    t.float "cruise_speed"
    t.float "fuel_capacity"
    t.float "empty_weight"
    t.float "max_takeoff_weight"
    t.integer "year_of_manufacture"
    t.string "engine_type"
    t.integer "number_of_engines"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registration"], name: "index_aircraft_on_registration", unique: true
  end
end
