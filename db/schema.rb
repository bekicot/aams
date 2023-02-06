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

ActiveRecord::Schema[7.0].define(version: 2023_02_06_212023) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_accounts_on_name", unique: true
  end

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "assets", force: :cascade do |t|
    t.string "name"
    t.bigint "location_id", null: false
    t.bigint "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_assets_on_account_id"
    t.index ["location_id"], name: "index_assets_on_location_id"
    t.index ["name"], name: "index_assets_on_name", unique: true
  end

  create_table "card_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_card_types_on_name", unique: true
  end

  create_table "cards", force: :cascade do |t|
    t.bigint "uid"
    t.bigint "card_type_id", null: false
    t.boolean "default"
    t.bigint "user_id", null: false
    t.bigint "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_cards_on_account_id"
    t.index ["card_type_id"], name: "index_cards_on_card_type_id"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "endpoints", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_endpoints_on_account_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.bigint "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_locations_on_account_id"
    t.index ["name"], name: "index_locations_on_name", unique: true
  end

  create_table "locker_compatible_cards", force: :cascade do |t|
    t.bigint "locker_id", null: false
    t.bigint "card_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_type_id"], name: "index_locker_compatible_cards_on_card_type_id"
    t.index ["locker_id"], name: "index_locker_compatible_cards_on_locker_id"
  end

  create_table "locker_states", force: :cascade do |t|
    t.bigint "locker_id", null: false
    t.string "sha256_digest", limit: 64
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locker_id"], name: "index_locker_states_on_locker_id"
  end

  create_table "locker_users", force: :cascade do |t|
    t.bigint "locker_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locker_id"], name: "index_locker_users_on_locker_id"
    t.index ["user_id"], name: "index_locker_users_on_user_id"
  end

  create_table "lockers", force: :cascade do |t|
    t.integer "mode"
    t.bigint "account_id", null: false
    t.bigint "serial_number"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_lockers_on_account_id"
    t.index ["location_id"], name: "index_lockers_on_location_id"
  end

  create_table "logs", force: :cascade do |t|
    t.string "object_type", null: false
    t.bigint "object_id", null: false
    t.string "severity"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["object_type", "object_id"], name: "index_logs_on_object"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.bigint "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_roles_on_account_id"
    t.index ["name"], name: "index_roles_on_name", unique: true
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "assets", "accounts"
  add_foreign_key "assets", "locations"
  add_foreign_key "cards", "accounts"
  add_foreign_key "cards", "card_types"
  add_foreign_key "cards", "users"
  add_foreign_key "endpoints", "accounts"
  add_foreign_key "locations", "accounts"
  add_foreign_key "locker_compatible_cards", "card_types"
  add_foreign_key "locker_compatible_cards", "lockers"
  add_foreign_key "locker_states", "lockers"
  add_foreign_key "locker_users", "lockers"
  add_foreign_key "locker_users", "users"
  add_foreign_key "lockers", "accounts"
  add_foreign_key "lockers", "locations"
  add_foreign_key "roles", "accounts"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
