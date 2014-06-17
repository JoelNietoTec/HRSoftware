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

ActiveRecord::Schema.define(version: 20140613184528) do

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

end
