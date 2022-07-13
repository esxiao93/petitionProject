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

ActiveRecord::Schema[7.0].define(version: 2022_07_08_154129) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "congressional_members", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.integer "districtNUM"
    t.string "political_party"
    t.string "years_in_office"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "key_issues", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "congressional_member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congressional_member_id"], name: "index_key_issues_on_congressional_member_id"
  end

  create_table "petitions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "signature"
    t.bigint "congressional_member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congressional_member_id"], name: "index_petitions_on_congressional_member_id"
  end

  create_table "user_petitions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "petition_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petition_id"], name: "index_user_petitions_on_petition_id"
    t.index ["user_id"], name: "index_user_petitions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.integer "district"
    t.boolean "admin", default: false
    t.bigint "congressional_member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congressional_member_id"], name: "index_users_on_congressional_member_id"
  end

  add_foreign_key "key_issues", "congressional_members"
  add_foreign_key "petitions", "congressional_members"
  add_foreign_key "user_petitions", "petitions"
  add_foreign_key "user_petitions", "users"
  add_foreign_key "users", "congressional_members"
end
