# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131128020020) do

  create_table "addresses", force: true do |t|
    t.integer  "customer_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "index"
    t.string   "town"
    t.string   "county"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", force: true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_products", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.decimal  "discount",    precision: 10, scale: 0
    t.decimal  "tax",         precision: 10, scale: 0
    t.decimal  "shippingFee", precision: 10, scale: 0
    t.decimal  "total",       precision: 10, scale: 0
    t.integer  "payment_id"
    t.string   "status"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",       precision: 10, scale: 0
    t.decimal  "discount",    precision: 10, scale: 0
    t.integer  "stock"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "country"
    t.decimal  "in",         precision: 10, scale: 0
    t.decimal  "mm",         precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
