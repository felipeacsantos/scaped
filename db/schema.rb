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

ActiveRecord::Schema.define(version: 20171124015442) do

  create_table "criterioestados", force: :cascade do |t|
    t.integer  "criterio_id"
    t.integer  "estado_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["criterio_id"], name: "index_criterioestados_on_criterio_id"
    t.index ["estado_id"], name: "index_criterioestados_on_estado_id"
  end

  create_table "criterios", force: :cascade do |t|
    t.integer  "operador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
  end

  create_table "esparams", force: :cascade do |t|
    t.string   "name"
    t.integer  "tipoestado_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tipoestado_id"], name: "index_esparams_on_tipoestado_id"
  end

  create_table "estadoesvalparams", force: :cascade do |t|
    t.integer  "estado_id"
    t.integer  "esvalparam_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["estado_id"], name: "index_estadoesvalparams_on_estado_id"
    t.index ["esvalparam_id"], name: "index_estadoesvalparams_on_esvalparam_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string   "name"
    t.integer  "versao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
  end

  create_table "esvalparams", force: :cascade do |t|
    t.string   "valor"
    t.integer  "esparam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
    t.index ["esparam_id"], name: "index_esvalparams_on_esparam_id"
  end

  create_table "objetos", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
  end

  create_table "objetovalparametros", force: :cascade do |t|
    t.integer  "objeto_id"
    t.integer  "valparametro_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["objeto_id"], name: "index_objetovalparametros_on_objeto_id"
    t.index ["valparametro_id"], name: "index_objetovalparametros_on_valparametro_id"
  end

  create_table "parametrizacaos", force: :cascade do |t|
    t.integer  "objeto_id"
    t.integer  "parametro_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["objeto_id"], name: "index_parametrizacaos_on_objeto_id"
    t.index ["parametro_id"], name: "index_parametrizacaos_on_parametro_id"
  end

  create_table "parametroes", force: :cascade do |t|
    t.string   "name"
    t.integer  "tipoestado_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tipoestado_id"], name: "index_parametroes_on_tipoestado_id"
  end

  create_table "parametros", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tipoobjeto"
    t.integer  "tipoobjeto_id"
    t.index ["tipoobjeto_id"], name: "index_parametros_on_tipoobjeto_id"
  end

  create_table "testedefinicaos", force: :cascade do |t|
    t.integer  "versao"
    t.string   "texto"
    t.integer  "checkvalor"
    t.integer  "checkexists"
    t.integer  "objeto_id"
    t.integer  "criterio_id"
    t.integer  "usuario_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["criterio_id"], name: "index_testedefinicaos_on_criterio_id"
    t.index ["objeto_id"], name: "index_testedefinicaos_on_objeto_id"
  end

  create_table "testes", force: :cascade do |t|
    t.integer  "versao"
    t.string   "texto"
    t.integer  "checkvalor"
    t.integer  "checkexists"
    t.integer  "objeto_id"
    t.integer  "criterio_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "usuario_id"
    t.index ["criterio_id"], name: "index_testes_on_criterio_id"
    t.index ["objeto_id"], name: "index_testes_on_objeto_id"
  end

  create_table "tipoestados", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipoobjetos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "valparametroes", force: :cascade do |t|
    t.string   "valor"
    t.integer  "parametroe_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["parametroe_id"], name: "index_valparametroes_on_parametroe_id"
  end

  create_table "valparametros", force: :cascade do |t|
    t.string   "valor"
    t.integer  "parametro_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "usuario_id"
    t.index ["parametro_id"], name: "index_valparametros_on_parametro_id"
  end

end
