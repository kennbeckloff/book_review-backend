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

ActiveRecord::Schema.define(version: 2022_09_10_150243) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "authors"
    t.string "publisher"
    t.string "publishedDate"
    t.string "description"
    t.integer "pageCount"
    t.integer "averageRating"
    t.integer "ratingsCount"
    t.string "imageLinks"
    t.string "language"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commentBody"
    t.string "username"
    t.datetime "createdAt"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "reviews"
    t.integer "book_id"
    t.integer "user_id"
  end

end