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

ActiveRecord::Schema.define(version: 20151014105214) do

  create_table "addresses", force: :cascade do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "addresses", ["customer_id"], name: "index_addresses_on_customer_id"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_no"
    t.integer  "transaction_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  add_index "customers", ["transaction_id"], name: "index_customers_on_transaction_id"

  create_table "discount_line_item_details", force: :cascade do |t|
    t.decimal  "discount_percentage"
    t.decimal  "discount_amount"
    t.integer  "invoice_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "discount_line_item_details", ["invoice_id"], name: "index_discount_line_item_details_on_invoice_id"

  create_table "invoices", force: :cascade do |t|
    t.decimal  "total_amount"
    t.decimal  "balance_due"
    t.string   "invoice_status"
    t.string   "special_notes"
    t.integer  "customer_id"
    t.integer  "transaction_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "invoices", ["customer_id"], name: "index_invoices_on_customer_id"
  add_index "invoices", ["transaction_id"], name: "index_invoices_on_transaction_id"

  create_table "payments", force: :cascade do |t|
    t.decimal  "amount"
    t.string   "type"
    t.integer  "transaction_id"
    t.integer  "invoice_id"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "payments", ["customer_id"], name: "index_payments_on_customer_id"
  add_index "payments", ["invoice_id"], name: "index_payments_on_invoice_id"
  add_index "payments", ["transaction_id"], name: "index_payments_on_transaction_id"

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "rate"
    t.integer  "product_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "products", ["product_category_id"], name: "index_products_on_product_category_id"

  create_table "sales_line_item_details", force: :cascade do |t|
    t.decimal  "quantity"
    t.decimal  "amount"
    t.datetime "date"
    t.integer  "product_id"
    t.integer  "invoice_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.decimal  "total_price"
  end

  add_index "sales_line_item_details", ["invoice_id"], name: "index_sales_line_item_details_on_invoice_id"
  add_index "sales_line_item_details", ["product_id"], name: "index_sales_line_item_details_on_product_id"

  create_table "sub_total_line_item_details", force: :cascade do |t|
    t.decimal  "sub_total_amount"
    t.integer  "invoice_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "sub_total_line_item_details", ["invoice_id"], name: "index_sub_total_line_item_details_on_invoice_id"

  create_table "tax_line_item_details", force: :cascade do |t|
    t.decimal  "tax_percentage"
    t.decimal  "tax_amount"
    t.integer  "invoice_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "tax_line_item_details", ["invoice_id"], name: "index_tax_line_item_details_on_invoice_id"

  create_table "transaction_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "transactionable_id"
    t.string   "transactionable_type"
    t.integer  "transaction_category_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
  end

  add_index "transactions", ["id", "transactionable_type", "transactionable_id"], name: "trans_index", unique: true
  add_index "transactions", ["transaction_category_id"], name: "index_transactions_on_transaction_category_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
