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

ActiveRecord::Schema.define(version: 20161029195819) do

  create_table "appointments", force: :cascade do |t|
    t.date     "fecha_programada"
    t.boolean  "finalizada",       default: false
    t.boolean  "aceptada",         default: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
    t.time     "hora_programada"
  end

  add_index "appointments", ["user_id"], name: "index_appointments_on_user_id"

  create_table "appointments_procedures", force: :cascade do |t|
    t.text     "anotaciones"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "appointment_id"
    t.integer  "procedure_id"
  end

  add_index "appointments_procedures", ["appointment_id"], name: "index_appointments_procedures_on_appointment_id"
  add_index "appointments_procedures", ["procedure_id"], name: "index_appointments_procedures_on_procedure_id"

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.text     "tipo_pago"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "appointment_id"
    t.decimal  "costo_total"
  end

  add_index "payments", ["appointment_id"], name: "index_payments_on_appointment_id"

  create_table "procedures", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.decimal  "costo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  add_index "procedures", ["category_id"], name: "index_procedures_on_category_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombre"
    t.string   "apellidos"
    t.boolean  "admin",                  default: false
    t.date     "fecha_nac"
    t.string   "sexo"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
