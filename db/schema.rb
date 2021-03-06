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

ActiveRecord::Schema.define(version: 20171030141854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_chapters_on_language_id"
  end

  create_table "code_tests", force: :cascade do |t|
    t.bigint "step_id"
    t.string "input"
    t.string "output"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["step_id"], name: "index_code_tests_on_step_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_steps_on_chapter_id"
  end

  create_table "user_steps", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "step_id"
    t.text "userCode"
    t.boolean "successfully_completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["step_id"], name: "index_user_steps_on_step_id"
    t.index ["user_id"], name: "index_user_steps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "random_avatar"
  end

end
