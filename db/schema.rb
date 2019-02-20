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

ActiveRecord::Schema.define(version: 2019_02_20_144342) do

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "opening_stock", default: 0
    t.integer "purchases", default: 0
    t.integer "total_stock", default: 0
    t.integer "total_sold", default: 0
    t.decimal "buying_cost", precision: 10, default: "0"
    t.decimal "total_buying_cost", precision: 10, default: "0"
    t.decimal "selling_cost", precision: 10, default: "0"
    t.decimal "margin", precision: 10, default: "0"
    t.decimal "total_margin", precision: 10, default: "0"
    t.decimal "total_sales", precision: 10, default: "0"
    t.integer "closing_stock", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
