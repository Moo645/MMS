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

ActiveRecord::Schema.define(version: 2022_03_21_084814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "manufacturing_orders", force: :cascade do |t|
    t.string "manufacturing_order_no"
    t.integer "product_id"
    t.integer "production_quantity"
    t.string "order_no"
    t.integer "order_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "molding_daily_sheets", force: :cascade do |t|
    t.integer "manufacturing_order_id"
    t.integer "employee_id"
    t.string "shift"
    t.integer "ipqc_id"
    t.integer "engineer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "molding_details", force: :cascade do |t|
    t.integer "molding_daily_sheet_id"
    t.string "molding_detail_no"
    t.integer "molding_cycle"
    t.decimal "molding_lot_weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
