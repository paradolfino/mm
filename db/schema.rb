# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_17_193209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compositions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "member_id", null: false
    t.index ["member_id"], name: "index_compositions_on_member_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "filename"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "forum_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "forum_post_replies", force: :cascade do |t|
    t.text "description"
    t.bigint "forum_post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["forum_post_id"], name: "index_forum_post_replies_on_forum_post_id"
  end

  create_table "forum_posts", force: :cascade do |t|
    t.string "subject"
    t.text "description"
    t.bigint "forum_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["forum_category_id"], name: "index_forum_posts_on_forum_category_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "display_name"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "performances", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "composition_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "member_id", null: false
    t.index ["composition_id"], name: "index_performances_on_composition_id"
    t.index ["member_id"], name: "index_performances_on_member_id"
  end

  add_foreign_key "compositions", "members"
  add_foreign_key "forum_post_replies", "forum_posts"
  add_foreign_key "forum_posts", "forum_categories"
  add_foreign_key "performances", "compositions"
  add_foreign_key "performances", "members"
end
