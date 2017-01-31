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

ActiveRecord::Schema.define(version: 20170125052715) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "factura_detalles", force: :cascade do |t|
    t.integer  "factura_id"
    t.integer  "servicio_id"
    t.integer  "cantidad"
    t.float    "valor_unitario"
    t.float    "valor_total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["factura_id"], name: "index_factura_detalles_on_factura_id"
    t.index ["servicio_id"], name: "index_factura_detalles_on_servicio_id"
  end

  create_table "facturas", force: :cascade do |t|
    t.integer  "paciente_id"
    t.integer  "habitacion_id"
    t.datetime "fecha_ingreso"
    t.datetime "fecha_salida"
    t.integer  "user_id"
    t.integer  "metodo_pago_id"
    t.float    "subtotal"
    t.float    "iva"
    t.float    "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["habitacion_id"], name: "index_facturas_on_habitacion_id"
    t.index ["metodo_pago_id"], name: "index_facturas_on_metodo_pago_id"
    t.index ["paciente_id"], name: "index_facturas_on_paciente_id"
    t.index ["user_id"], name: "index_facturas_on_user_id"
  end

  create_table "fichas", force: :cascade do |t|
    t.integer  "paciente_id"
    t.integer  "altura"
    t.integer  "peso"
    t.integer  "tipo_sangre_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["paciente_id"], name: "index_fichas_on_paciente_id"
    t.index ["tipo_sangre_id"], name: "index_fichas_on_tipo_sangre_id"
  end

  create_table "habitacion_tipos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habitacions", force: :cascade do |t|
    t.string   "cod_habitacion"
    t.integer  "habitacion_tipo_id"
    t.integer  "piso"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["cod_habitacion"], name: "index_habitacions_on_cod_habitacion", unique: true
    t.index ["habitacion_tipo_id"], name: "index_habitacions_on_habitacion_tipo_id"
  end

  create_table "metodo_pagos", force: :cascade do |t|
    t.string   "descripcion"
    t.string   "banco"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string   "cedula"
    t.string   "nombres"
    t.string   "apellidos"
    t.date     "fecha_nacimiento"
    t.string   "email"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["cedula"], name: "index_pacientes_on_cedula", unique: true
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "cedula"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "email"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "reservas", force: :cascade do |t|
    t.integer  "paciente_id"
    t.integer  "habitacion_id"
    t.datetime "fecha_ingreso"
    t.datetime "fecha_salida"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["habitacion_id"], name: "index_reservas_on_habitacion_id"
    t.index ["paciente_id"], name: "index_reservas_on_paciente_id"
  end

  create_table "servicios", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.boolean  "disponible", default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["nombre"], name: "index_servicios_on_nombre", unique: true
  end

  create_table "tipo_sangres", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.boolean  "admin",                  default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
