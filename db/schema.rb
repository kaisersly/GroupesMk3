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

ActiveRecord::Schema.define(version: 20140127214253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: true do |t|
    t.integer  "matiere_id",  null: false
    t.integer  "etudiant_id", null: false
    t.integer  "groupe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "choices", ["matiere_id", "etudiant_id"], name: "index_choices_on_matiere_id_and_etudiant_id", unique: true, using: :btree

  create_table "etudiants", force: true do |t|
    t.string   "code"
    t.string   "firstname",  null: false
    t.string   "lastname",   null: false
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "etudiants", ["code"], name: "index_etudiants_on_code", unique: true, using: :btree

  create_table "formations", force: true do |t|
    t.string   "name",       null: false
    t.string   "status",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groupes", force: true do |t|
    t.string   "name",       null: false
    t.string   "schedule"
    t.string   "weekday"
    t.string   "teacher"
    t.string   "location"
    t.text     "additional"
    t.integer  "matiere_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "capacity"
  end

  add_index "groupes", ["matiere_id"], name: "index_groupes_on_matiere_id", using: :btree
  add_index "groupes", ["name", "matiere_id"], name: "index_groupes_on_name_and_matiere_id", unique: true, using: :btree

  create_table "matieres", force: true do |t|
    t.string   "name",         null: false
    t.string   "code",         null: false
    t.string   "status"
    t.integer  "capacity",     null: false
    t.integer  "formation_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matieres", ["formation_id"], name: "index_matieres_on_formation_id", using: :btree
  add_index "matieres", ["name", "formation_id"], name: "index_matieres_on_name_and_formation_id", unique: true, using: :btree

end
