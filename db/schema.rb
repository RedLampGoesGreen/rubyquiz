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

ActiveRecord::Schema.define(version: 20150526173634) do

  create_table "answers", force: :cascade do |t|
    t.text     "answer_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "categories_games", id: false, force: :cascade do |t|
    t.integer "game_id",     null: false
    t.integer "category_id", null: false
  end

  create_table "categories_questions", id: false, force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "category_id", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "games", ["level_id"], name: "index_games_on_level_id"

  create_table "installs", force: :cascade do |t|
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
  end

  add_index "installs", ["email"], name: "index_installs_on_email", unique: true
  add_index "installs", ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true

  create_table "levels", force: :cascade do |t|
    t.integer  "level_rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "player_name"
    t.integer  "level_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "players", ["level_id"], name: "index_players_on_level_id"
  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "questions", force: :cascade do |t|
    t.integer  "level_id"
    t.integer  "answer_id"
    t.text     "question_text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "questions", ["answer_id"], name: "index_questions_on_answer_id"
  add_index "questions", ["level_id"], name: "index_questions_on_level_id"

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
