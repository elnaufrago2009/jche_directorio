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

ActiveRecord::Schema.define(version: 20140715142707) do

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "areas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios", force: true do |t|
    t.integer  "tiked_id"
    t.integer  "user_id"
    t.integer  "admin_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directorioips", force: true do |t|
    t.string   "ip"
    t.string   "username"
    t.string   "hostname"
    t.string   "grupo"
    t.string   "admin_id"
    t.string   "mac"
    t.string   "ubicacion_actual"
    t.string   "empresa"
    t.string   "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nombres", force: true do |t|
    t.string   "apellido"
    t.integer  "cargo_id"
    t.integer  "area_id"
    t.integer  "empresa_id"
    t.string   "fecha_nacimiento"
    t.string   "dni"
    t.string   "mail"
    t.string   "movil_1"
    t.string   "movil_2"
    t.string   "telefono_fijo"
    t.string   "nacionalidad"
    t.string   "estado_civil"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personals", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "cargo_id"
    t.integer  "area_id"
    t.integer  "empresa_id"
    t.date     "fecha_nacimiento"
    t.string   "dni"
    t.string   "email"
    t.string   "movil_1"
    t.string   "movil_2"
    t.string   "telefono_fijo"
    t.string   "nacionalidad"
    t.string   "estado_civil"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reclamos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "tiked_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiempo_soportes", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiked_niveles", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tikeds", force: true do |t|
    t.integer  "user_id"
    t.integer  "tipo_soporte_id"
    t.text     "observaciones"
    t.integer  "tiked_nivele_id"
    t.integer  "admin_id"
    t.datetime "fecha_hora_atencion"
    t.integer  "tiempo_soporte_id"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_soportes", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "cargo_id"
    t.integer  "area_id"
    t.integer  "empresa_id"
    t.date     "fecha_nacimiento"
    t.string   "dni"
    t.string   "movil_1"
    t.string   "movil_2"
    t.string   "telefono_fijo"
    t.string   "nacionalidad"
    t.string   "estado_civil"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
