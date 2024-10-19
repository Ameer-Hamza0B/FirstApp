# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_17_120204) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "students_teachers", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_students_teachers_on_teacher_id"
    t.index ["user_id"], name: "index_students_teachers_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "subject"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
  end

  add_foreign_key "students_teachers", "teachers"
  add_foreign_key "students_teachers", "users"
end
