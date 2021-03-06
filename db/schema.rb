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

ActiveRecord::Schema.define(version: 20170605135256) do

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "entities", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "salesforce_id"
    t.string "subdomain"
    t.string "code"
    t.integer "parent_id"
    t.string "name"
    t.string "display_name"
    t.string "kind", limit: 19
    t.string "category", limit: 12
    t.string "status", limit: 19, null: false
    t.datetime "status_updated_at"
    t.datetime "live_date"
    t.datetime "cancelled_date"
    t.boolean "test", default: false, null: false
    t.integer "subscription_plan_id"
    t.integer "discount_id"
    t.string "email"
    t.string "proper_email"
    t.string "first_name"
    t.string "last_name"
    t.string "phone", limit: 50
    t.string "external_id"
    t.string "external_office_id"
    t.integer "address_id"
    t.string "moves_per_month"
    t.integer "number_of_units"
    t.string "pmm"
    t.string "stripe_customer_id"
    t.string "stripe_subscription_id"
    t.text "stripe_subscription_metadata"
    t.string "subscription_type", limit: 8, default: "disabled", null: false
    t.string "logo_id"
    t.string "facebook_url"
    t.string "twitter_url"
    t.string "linkedin_url"
    t.string "website"
    t.string "team_name"
    t.text "message"
    t.json "config"
    t.boolean "enable_automated_invites", default: true
    t.boolean "notify_before_invite", default: true
    t.boolean "notify_after_invite", default: false
    t.boolean "force_hard_verification", default: false
    t.boolean "automated", default: false
    t.string "integration_status", limit: 10, default: "none"
    t.datetime "last_synced_at"
    t.timestamp "deleted_at"
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["address_id"], name: "entities_addresses_id_fk"
    t.index ["code"], name: "index_entities_on_code", unique: true
    t.index ["deleted_at"], name: "index_entities_on_deleted_at"
    t.index ["discount_id"], name: "entities_discount_id_fk"
    t.index ["kind"], name: "index_entities_on_kind"
    t.index ["parent_id", "name"], name: "index_entities_on_parent_id_and_name", unique: true
    t.index ["parent_id"], name: "entities_parent_id_fk"
    t.index ["proper_email"], name: "index_entities_on_proper_email", unique: true
    t.index ["salesforce_id"], name: "index_entities_on_salesforce_id", unique: true
    t.index ["subdomain"], name: "index_entities_on_subdomain", unique: true
    t.index ["subscription_plan_id"], name: "entities_subscription_plan_id_fk"
    t.index ["updated_at"], name: "index_entities_on_updated_at"
  end

end
