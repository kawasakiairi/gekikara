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

ActiveRecord::Schema[7.0].define(version: 2024_08_26_065854) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_foods", comment: "お気に入り食品", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_favorite_foods_on_food_id"
    t.index ["user_id", "food_id"], name: "index_favorite_foods_on_user_id_and_food_id", unique: true
    t.index ["user_id"], name: "index_favorite_foods_on_user_id"
  end

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
    t.decimal "price", precision: 10, scale: 2, null: false, comment: "希望小売価格"
    t.string "title", null: false, comment: "タイトル"
    t.string "body", null: false, comment: "説明"
    t.bigint "food_category_id", comment: "食品カテゴリ"
    t.bigint "food_country_id", comment: "国名カテゴリ"
    t.string "food_image", comment: "食品画像"
    t.string "from", comment: "出典"
    t.index ["food_category_id"], name: "index_foods_on_food_category_id"
    t.index ["food_country_id"], name: "index_foods_on_food_country_id"
  end

  create_table "reviews", comment: "レビュー", force: :cascade do |t|
    t.string "title", null: false, comment: "タイトル"
    t.string "rating", null: false, comment: "評価"
    t.integer "spice_level", comment: "辛さレベル"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "food_id", comment: "レビュー"
    t.bigint "user_id"
    t.index ["food_id"], name: "index_reviews_on_food_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false, comment: "名前"
    t.string "comment"
    t.string "profile_image", comment: "プロフィール画像"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "favorite_foods", "foods"
  add_foreign_key "favorite_foods", "users"
  add_foreign_key "foods", "food_categories", on_update: :restrict, on_delete: :restrict
  add_foreign_key "foods", "food_countries", on_update: :restrict, on_delete: :restrict
  add_foreign_key "reviews", "foods", on_update: :cascade, on_delete: :cascade
  add_foreign_key "reviews", "users", on_update: :cascade, on_delete: :cascade
end
