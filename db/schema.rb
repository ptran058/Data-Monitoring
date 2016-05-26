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

ActiveRecord::Schema.define(version: 20160519101010) do

  create_table "activity_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allergies", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "name"
    t.date     "since"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blood_pressure_targets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "sys"
    t.integer  "dia"
  end

  create_table "blood_pressures", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "client_id"
    t.integer  "sys"
    t.integer  "dia"
    t.datetime "activity_date"
  end

  create_table "cholesterol_targets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "ldl"
    t.integer  "hdl"
  end

  create_table "cholesterols", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "client_id"
    t.integer  "ldl"
    t.integer  "hdl"
    t.integer  "triglycerides"
    t.datetime "activity_date"
  end

  create_table "client_medications", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "medication_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "photo_url"
    t.date     "date_of_birth"
    t.string   "blood_type"
    t.string   "room"
    t.integer  "institution"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "name"
    t.date     "since"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "glucose_targets", force: :cascade do |t|
    t.integer  "client_id"
    t.decimal  "low"
    t.decimal  "high"
    t.integer  "institution_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "glucoses", force: :cascade do |t|
    t.integer  "client_id"
    t.decimal  "mmol"
    t.datetime "activity_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "hba1c_targets", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "institution_id"
    t.decimal  "mmol"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "hba1cs", force: :cascade do |t|
    t.integer  "client_id"
    t.decimal  "mmol"
    t.datetime "activity_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "heartrate_targets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "pulse"
  end

  create_table "heartrates", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "client_id"
    t.integer  "pulse"
    t.datetime "activity_date"
  end

  create_table "institutions", force: :cascade do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "zip"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lengths", force: :cascade do |t|
    t.integer  "client_id"
    t.datetime "activity_date"
    t.integer  "length"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer  "client_id"
    t.text     "description"
    t.integer  "activity_type_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "medication_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string   "name"
    t.string   "quantity"
    t.integer  "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sights", force: :cascade do |t|
    t.integer  "client_id"
    t.date     "activity_date"
    t.decimal  "sight_left"
    t.decimal  "sight_right"
    t.decimal  "cilinder_left"
    t.decimal  "cilinder_right"
    t.text     "comments"
    t.text     "reason"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "weight_targets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "weight"
    t.integer  "max_weight"
    t.integer  "min_weight"
    t.datetime "date"
  end

  create_table "weights", force: :cascade do |t|
    t.integer  "client_id"
    t.datetime "activity_date"
    t.decimal  "weight"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
