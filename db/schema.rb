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

ActiveRecord::Schema.define(version: 20140626005219) do

  create_table "cargos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.boolean  "activo"
    t.integer  "departamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cargos", ["departamento_id"], name: "index_cargos_on_departamento_id"

  create_table "centro_costos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departamentos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empleados", force: true do |t|
    t.string   "codigo"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "cedula"
    t.string   "seguro_social"
    t.string   "dv"
    t.string   "clave_isr"
    t.integer  "grupo_pago_id"
    t.integer  "status_id"
    t.integer  "tipo_salario_id"
    t.integer  "tipo_empleado_id"
    t.float    "salario_pactado"
    t.float    "horas_base"
    t.date     "fecha_ingreso"
    t.date     "fecha_liquidacion"
    t.integer  "sucursal_id"
    t.integer  "departamento_id"
    t.integer  "centro_costo_id"
    t.integer  "proyecto_id"
    t.integer  "fase_id"
    t.integer  "seccion_id"
    t.date     "fecha_nacimiento"
    t.string   "nacionalidad_id"
    t.integer  "cargo_id"
    t.string   "direccion"
    t.string   "email"
    t.string   "telefono"
    t.integer  "sexo_id"
    t.integer  "estado_civil_id"
    t.integer  "forma_pago_id"
    t.integer  "sector_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "estado_civils", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estatuses", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fases", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forma_pagos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupo_pagos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relacions", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seccions", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sexos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sucursals", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_empleados", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_salarios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turnos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.time     "entrada"
    t.time     "inicio_descanso"
    t.time     "fin_descanso"
    t.time     "salida"
    t.boolean  "descanso"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "salt",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "username"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["remember_me_token"], name: "index_usuarios_on_remember_me_token"
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token"

end
