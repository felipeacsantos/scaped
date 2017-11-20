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

ActiveRecord::Schema.define(version: 20171120004907) do

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
  end

  create_table "estados", force: :cascade do |t|
    t.string   "name"
    t.integer  "versao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objetos", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "parametros", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tipoobjeto"
    t.integer  "tipoobjeto_id"
    t.index ["tipoobjeto_id"], name: "index_parametros_on_tipoobjeto_id"
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
    t.index ["criterio_id"], name: "index_testes_on_criterio_id"
    t.index ["objeto_id"], name: "index_testes_on_objeto_id"
  end

  create_table "tipoobjetos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "primeironome"
    t.string   "sobrenome"
    t.string   "email"
    t.string   "senha"
    t.date     "datanasc"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "valparametros", force: :cascade do |t|
    t.string   "valor"
    t.integer  "parametro_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["parametro_id"], name: "index_valparametros_on_parametro_id"
  end

end
