# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_18_011903) do

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_in"
    t.string "last_name"
    t.string "street_address"
    t.string "second_street_address"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "country"
    t.date "birth_date"
    t.string "phone_number"
    t.string "email_address"
    t.string "gender"
    t.string "emergency_contact_name"
    t.string "emergency_contact_phone"
    t.string "emergency_contact_relation"
    t.boolean "member"
    t.date "member_since"
    t.date "memebership_ended"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "occupation"
    t.decimal "balance"
  end

end
