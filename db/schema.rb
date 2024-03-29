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

ActiveRecord::Schema.define(version: 2021_01_31_021059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "palettes", force: :cascade do |t|
    t.string "name"
    t.string "color1"
    t.string "color2"
    t.string "color3"
    t.bigint "pattern_id"
    t.index ["pattern_id"], name: "index_palettes_on_pattern_id"
  end

  create_table "patterns", force: :cascade do |t|
    t.string "name"
    t.string "style"
  end

  add_foreign_key "palettes", "patterns"
end
