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

ActiveRecord::Schema.define(version: 20170430033514) do

  create_table "clinic_has_qualities", force: :cascade do |t|
    t.integer  "clinic_id"
    t.integer  "quality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_clinic_has_qualities_on_clinic_id"
    t.index ["quality_id"], name: "index_clinic_has_qualities_on_quality_id"
  end

  create_table "clinic_has_specialties", force: :cascade do |t|
    t.integer  "clinic_id"
    t.integer  "specialty_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["clinic_id"], name: "index_clinic_has_specialties_on_clinic_id"
    t.index ["specialty_id"], name: "index_clinic_has_specialties_on_specialty_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "name"
    t.text     "description"
    t.datetime "founded_since"
    t.string   "state"
    t.string   "city"
    t.text     "address"
    t.integer  "visit_count",       default: 0
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["user_id"], name: "index_clinics_on_user_id"
  end

  create_table "consulting_rooms", force: :cascade do |t|
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "name"
    t.text     "description"
    t.datetime "founded_since"
    t.string   "state"
    t.string   "city"
    t.text     "address"
    t.integer  "visit_count",       default: 0
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["user_id"], name: "index_consulting_rooms_on_user_id"
  end

  create_table "doctor_has_specialties", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "specialty_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["doctor_id"], name: "index_doctor_has_specialties_on_doctor_id"
    t.index ["specialty_id"], name: "index_doctor_has_specialties_on_specialty_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "identification_card"
    t.string   "abbreviation"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "surname"
    t.string   "second_surname"
    t.datetime "birth_date"
    t.datetime "doctor_since"
    t.integer  "visit_count",            default: 0
    t.string   "status"
    t.string   "notion"
    t.integer  "clinic_id"
    t.integer  "consulting_room_id"
    t.string   "state"
    t.string   "city"
    t.string   "address"
    t.string   "phone"
    t.string   "cell_phone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["clinic_id"], name: "index_doctors_on_clinic_id"
    t.index ["consulting_room_id"], name: "index_doctors_on_consulting_room_id"
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "patients", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "identification_card"
    t.string   "first_name"
    t.string   "surname"
    t.string   "phone"
    t.string   "cell_phone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "qualities", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "icon"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.text     "icon"
    t.string   "color"
    t.integer  "visit_count",        default: 0
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "permission_level",       default: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
