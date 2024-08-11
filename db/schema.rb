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

ActiveRecord::Schema[7.0].define(version: 2024_08_11_222339) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_categories", comment: "食品カテゴリ", force: :cascade do |t|
    t.string "name", comment: "食品カテゴリ名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_countries", comment: "国名", force: :cascade do |t|
    t.string "name", comment: "国名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", comment: "食品表示", force: :cascade do |t|
    t.string "name", null: false, comment: "食品名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "spice_level", null: false, comment: "辛さレベル"
    t.integer "price", null: false, comment: "希望小売価格"
    t.string "title", null: false, comment: "タイトル"
    t.string "body", null: false, comment: "説明"
    t.bigint "food_category_id", comment: "食品カテゴリ"
    t.bigint "food_country_id", comment: "国名カテゴリ"
    t.string "food_image", comment: "食品画像"
    t.index ["food_category_id"], name: "index_foods_on_food_category_id"
    t.index ["food_country_id"], name: "index_foods_on_food_country_id"
  end

  add_foreign_key "foods", "food_categories", on_update: :restrict, on_delete: :restrict
  add_foreign_key "foods", "food_countries", on_update: :restrict, on_delete: :restrict
end