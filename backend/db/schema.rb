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

ActiveRecord::Schema.define(version: 2022_04_07_023147) do

  create_table "all_days", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "all_months", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "all_ruikeis", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "all_years", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "site1_days", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "point"
  end

  create_table "site1_months", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "point"
  end

  create_table "site1_ruikeis", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "last_up"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
  end

  create_table "site1_years", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
  end

  create_table "site1s", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "points"
    t.string "last_up"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
  end

  create_table "site2_days", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "point"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
  end

  create_table "site2_months", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "point"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
  end

  create_table "site2_ruikeis", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "last_up"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
  end

  create_table "site2_years", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
  end

  create_table "site3_days", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "point"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
  end

  create_table "site3_months", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "point"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
  end

  create_table "site3_ruikeis", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "last_up"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
  end

  create_table "site3_years", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "novel_url"
    t.string "author"
    t.text "author_url"
    t.text "description"
    t.string "peges"
    t.string "words"
    t.string "kinds"
    t.string "point"
    t.string "tag0"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.string "tag6"
    t.string "tag7"
    t.string "tag8"
    t.string "tag9"
    t.string "tag10"
    t.string "tag11"
    t.string "tag12"
    t.string "tag13"
    t.string "tag14"
    t.string "tag15"
    t.string "tag16"
    t.string "tag17"
  end

end
