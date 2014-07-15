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

ActiveRecord::Schema.define(version: 20140715194121) do

  create_table "area_profesionals", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "distritos", force: true do |t|
    t.integer  "provincia_id"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "distritos", ["provincia_id"], name: "index_distritos_on_provincia_id"

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

  create_table "idiomas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "licencia", force: true do |t|
    t.string   "tipo"
    t.string   "vehiculo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nivel_estudios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nivel_idiomas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prospecto_cargos", force: true do |t|
    t.integer  "prospecto_id"
    t.integer  "cargo_id"
    t.boolean  "prioridad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prospecto_cargos", ["prospecto_id"], name: "index_prospecto_cargos_on_prospecto_id"

  create_table "prospecto_cursos", force: true do |t|
    t.integer  "prospecto_id"
    t.string   "titulo_curso"
    t.string   "institucion"
    t.text     "descripcion_curso"
    t.integer  "anio_curso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prospecto_cursos", ["prospecto_id"], name: "index_prospecto_cursos_on_prospecto_id"

  create_table "prospecto_estudios", force: true do |t|
    t.integer  "prospecto_id"
    t.integer  "nivel_estudio_id"
    t.string   "institucion"
    t.integer  "fecha_inicio"
    t.integer  "fecha_fin"
    t.integer  "status_estudio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre_titulo"
  end

  add_index "prospecto_estudios", ["prospecto_id"], name: "index_prospecto_estudios_on_prospecto_id"

  create_table "prospecto_experiencia", force: true do |t|
    t.integer  "prospecto_id"
    t.string   "empresa"
    t.string   "cargo"
    t.text     "descripcion_cargo"
    t.date     "fecha_ingreso"
    t.date     "fecha_salida"
    t.boolean  "actual"
    t.float    "ultimo_salario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prospecto_experiencia", ["prospecto_id"], name: "index_prospecto_experiencia_on_prospecto_id"

  create_table "prospecto_idiomas", force: true do |t|
    t.integer  "prospecto_id"
    t.integer  "idioma_id"
    t.integer  "nivel_oral_id"
    t.integer  "nivel_escrito_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prospecto_idiomas", ["prospecto_id"], name: "index_prospecto_idiomas_on_prospecto_id"

  create_table "prospecto_telefonos", force: true do |t|
    t.integer  "prospecto_id"
    t.integer  "tipos_telefono_id"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prospecto_telefonos", ["prospecto_id"], name: "index_prospecto_telefonos_on_prospecto_id"

  create_table "prospectos", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "cedula"
    t.string   "seguro_social"
    t.integer  "sexo_id"
    t.float    "aspiracion_salario"
    t.integer  "estado_civil_id"
    t.string   "direccion"
    t.date     "fecha_nacimiento"
    t.integer  "licencia_id"
    t.string   "nacionalidad"
    t.boolean  "disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "provincia", force: true do |t|
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

  create_table "status_estudios", force: true do |t|
    t.string   "nombre"
    t.boolean  "finalizado"
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

  create_table "tipo_puestos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_salarios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos_telefonos", force: true do |t|
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

  create_table "vacantes", force: true do |t|
    t.integer  "cargo_id"
    t.date     "fecha_inicio"
    t.date     "fecha_vencimiento"
    t.boolean  "activo"
    t.integer  "area_profesional_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "descripcion_cargo"
    t.integer  "provincia_id"
    t.integer  "distrito_id"
    t.float    "salario_oferta"
    t.integer  "nivel_studio_id"
    t.string   "direccion"
    t.integer  "tipo_puesto_id"
    t.integer  "grupo_pago_id"
    t.text     "otros_requisitos"
  end

end
