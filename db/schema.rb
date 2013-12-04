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

ActiveRecord::Schema.define(version: 20131203000223) do

  create_table "addresses", force: true do |t|
    t.integer  "customer_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "code"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "occasion"
    t.string   "age"
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

  create_table "images", force: true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", force: true do |t|
    t.string   "name"
    t.string   "quality"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_materials", force: true do |t|
    t.integer  "product_id"
    t.integer  "material_id"
    t.integer  "g"
    t.integer  "oz"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_sizes", force: true do |t|
    t.integer  "product_id"
    t.integer  "size_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.text     "description"
    t.string   "imageUrl"
    t.decimal  "price",       precision: 10, scale: 0
    t.decimal  "discount",    precision: 10, scale: 0
    t.integer  "stock"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: true do |t|
    t.integer  "type_id"
    t.string   "name"
    t.string   "us"
    t.string   "uk"
    t.string   "cn"
    t.string   "ind"
    t.string   "it"
    t.decimal  "inch",       precision: 10, scale: 0
    t.decimal  "mm",         precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testings", force: true do |t|
    t.string "name",  limit: 50
    t.string "names", limit: 50
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
