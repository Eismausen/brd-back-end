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

ActiveRecord::Schema.define(version: 2021_12_08_173040) do

  create_table "boardgames", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.float "price_usd"
    t.float "msrp"
    t.integer "year_published"
    t.integer "min_players"
    t.integer "max_players"
    t.integer "min_playtime"
    t.integer "max_playtime"
    t.integer "min_age"
    t.string "description_preview"
    t.string "description"
    t.string "commentary"
    t.string "faq"
    t.string "thumb_url"
    t.string "image_url"
    t.string "publisher"
    t.string "designer"
    t.string "artist"
    t.float "learning_complexity"
    t.float "strategy_complexity"
    t.float "bga_rating"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.string "old_cat_ref"
  end

  create_table "category_records", force: :cascade do |t|
    t.integer "category_id"
    t.integer "boardgame_id"
  end

  create_table "favorite_categories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id"
  end

  create_table "favorite_mechanics", force: :cascade do |t|
    t.integer "user_id"
    t.integer "mechanic_id"
  end

  create_table "inventory_records", force: :cascade do |t|
    t.integer "boardgame_id"
    t.integer "user_id"
  end

  create_table "mechanic_records", force: :cascade do |t|
    t.integer "mechanic_id"
    t.integer "boardgame_id"
  end

  create_table "mechanics", force: :cascade do |t|
    t.string "mechanic_name"
    t.string "old_mech_ref"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "wishlist_records", force: :cascade do |t|
    t.integer "user_id"
    t.integer "boardgame_id"
  end

end
