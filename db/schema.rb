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

ActiveRecord::Schema[7.0].define(version: 2024_07_11_190811) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string "sumary"
    t.string "text"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adjustments", force: :cascade do |t|
    t.string "phone"
    t.string "adress"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adsenses", force: :cascade do |t|
    t.string "title"
    t.integer "ad_type"
    t.text "script"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "album_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.datetime "date_publish"
    t.text "description"
    t.string "slug"
    t.boolean "featured", default: false
    t.bigint "album_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_category_id"], name: "index_albums_on_album_category_id"
  end

  create_table "albums_pages", force: :cascade do |t|
    t.bigint "album_id"
    t.bigint "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_albums_pages_on_album_id"
    t.index ["page_id"], name: "index_albums_pages_on_page_id"
  end

  create_table "albums_posts", id: false, force: :cascade do |t|
    t.bigint "album_id", null: false
    t.bigint "post_id", null: false
    t.index ["album_id", "post_id"], name: "index_album_post"
    t.index ["post_id", "album_id"], name: "index_post_album"
  end

  create_table "archive_completes", force: :cascade do |t|
    t.string "title"
    t.string "archive"
    t.bigint "bid_complete_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bid_complete_id"], name: "index_archive_completes_on_bid_complete_id"
  end

  create_table "archive_contract_ends", force: :cascade do |t|
    t.string "title"
    t.string "archive"
    t.bigint "contract_end_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_end_id"], name: "index_archive_contract_ends_on_contract_end_id"
  end

  create_table "archive_contracts", force: :cascade do |t|
    t.string "title"
    t.string "archive"
    t.bigint "contract_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_archive_contracts_on_contract_id"
  end

  create_table "archive_notices", force: :cascade do |t|
    t.string "title"
    t.string "archive"
    t.bigint "bid_notice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bid_notice_id"], name: "index_archive_notices_on_bid_notice_id"
  end

  create_table "archive_pages", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.string "archive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "page_id"
  end

  create_table "archive_results", force: :cascade do |t|
    t.string "title"
    t.string "archive"
    t.bigint "bid_result_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bid_result_id"], name: "index_archive_results_on_bid_result_id"
  end

  create_table "archive_secretaries", force: :cascade do |t|
    t.string "title"
    t.string "archive"
    t.bigint "secretary_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["secretary_id"], name: "index_archive_secretaries_on_secretary_id"
  end

  create_table "audits", force: :cascade do |t|
    t.integer "auditable_id"
    t.string "auditable_type"
    t.integer "associated_id"
    t.string "associated_type"
    t.integer "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.integer "version", default: 0
    t.string "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "associated_index"
    t.index ["auditable_type", "auditable_id", "version"], name: "auditable_index"
    t.index ["created_at"], name: "index_audits_on_created_at"
    t.index ["request_uuid"], name: "index_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "user_index"
  end

  create_table "banners", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.string "link"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "format_ad_id"
    t.boolean "status"
    t.string "code_slot_adsense"
    t.string "code_client_adsense"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.string "file_ad"
    t.string "video"
    t.integer "category"
    t.index ["format_ad_id"], name: "index_banners_on_format_ad_id"
  end

  create_table "bid_completes", force: :cascade do |t|
    t.string "file"
    t.string "modality"
    t.string "process"
    t.date "judgment"
    t.string "object"
    t.bigint "bidding_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "publish"
    t.index ["bidding_category_id"], name: "index_bid_completes_on_bidding_category_id"
  end

  create_table "bid_notices", force: :cascade do |t|
    t.string "file"
    t.date "publish_date"
    t.string "number"
    t.string "modality"
    t.string "object"
    t.bigint "bidding_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "publish"
    t.index ["bidding_category_id"], name: "index_bid_notices_on_bidding_category_id"
  end

  create_table "bid_results", force: :cascade do |t|
    t.string "file"
    t.date "date_result"
    t.string "modality"
    t.string "number"
    t.string "winner"
    t.string "object"
    t.bigint "bidding_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "publish"
    t.index ["bidding_category_id"], name: "index_bid_results_on_bidding_category_id"
  end

  create_table "bidding_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_fonts", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_quick_accesses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "icon_title"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
  end

  create_table "contract_ends", force: :cascade do |t|
    t.string "file"
    t.string "number"
    t.date "date_publish"
    t.string "supplier"
    t.string "object"
    t.bigint "bidding_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bidding_category_id"], name: "index_contract_ends_on_bidding_category_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "file"
    t.string "number"
    t.date "publish_date"
    t.string "modality"
    t.string "process"
    t.string "supplier"
    t.string "object"
    t.bigint "bidding_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bidding_category_id"], name: "index_contracts_on_bidding_category_id"
  end

  create_table "font_primaries", force: :cascade do |t|
    t.bigint "category_font_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_font_id"], name: "index_font_primaries_on_category_font_id"
  end

  create_table "font_secondaries", force: :cascade do |t|
    t.bigint "category_font_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_font_id"], name: "index_font_secondaries_on_category_font_id"
  end

  create_table "format_ads", force: :cascade do |t|
    t.string "title"
    t.string "width"
    t.string "height"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "law_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "laws", force: :cascade do |t|
    t.string "file"
    t.date "publish_date"
    t.string "name"
    t.string "ementa"
    t.bigint "law_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["law_category_id"], name: "index_laws_on_law_category_id"
  end

  create_table "link_tops", force: :cascade do |t|
    t.string "icon"
    t.string "link"
    t.string "name"
    t.boolean "new_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links_pages", id: false, force: :cascade do |t|
    t.integer "page_id", null: false
    t.integer "link_id", null: false
    t.index ["link_id", "page_id"], name: "index_link_page"
    t.index ["page_id", "link_id"], name: "index_page_link"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.boolean "active"
    t.boolean "active_link"
    t.boolean "active_sub_menu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ordem"
  end

  create_table "official_diaries", force: :cascade do |t|
    t.date "publish_date"
    t.string "number"
    t.string "ementa"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.text "description"
    t.string "slug"
    t.string "page_link"
    t.bigint "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "summary"
    t.index ["album_id"], name: "index_pages_on_album_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_permissions_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.boolean "cover", default: false
    t.bigint "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_photos_on_album_id"
  end

  create_table "post_categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_post_categories_on_slug", unique: true
  end

  create_table "post_images", force: :cascade do |t|
    t.string "url"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_images_on_post_id"
  end

  create_table "post_views", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.string "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_post_views_on_created_at"
    t.index ["post_id"], name: "index_post_views_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.string "written_by"
    t.string "source"
    t.string "cover"
    t.string "slug"
    t.datetime "date_publish"
    t.text "content"
    t.boolean "featured", default: false
    t.boolean "is_published", default: false
    t.bigint "post_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date_publish"], name: "index_posts_on_date_publish"
    t.index ["post_category_id"], name: "index_posts_on_post_category_id"
    t.index ["slug"], name: "index_posts_on_slug", unique: true
  end

  create_table "quick_access_views", force: :cascade do |t|
    t.bigint "quick_access_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quick_access_id"], name: "index_quick_access_views_on_quick_access_id"
  end

  create_table "quick_accesses", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.text "description"
    t.string "icon"
    t.bigint "category_quick_access_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "new_page"
    t.integer "views_count"
    t.index ["category_quick_access_id"], name: "index_quick_accesses_on_category_quick_access_id"
  end

  create_table "secretaries", force: :cascade do |t|
    t.string "nome"
    t.string "photo"
    t.string "page_link"
    t.text "description"
    t.text "summary"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_secretary"
  end

  create_table "separate_file_archives", force: :cascade do |t|
    t.string "title"
    t.string "archive"
    t.string "slug"
    t.bigint "separate_file_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["separate_file_id"], name: "index_separate_file_archives_on_separate_file_id"
  end

  create_table "separate_files", force: :cascade do |t|
    t.string "page_link"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_colors", force: :cascade do |t|
    t.string "primary", default: "#FFFFFF"
    t.string "sencondary", default: "#FFFFFF"
    t.string "terciary", default: "#FFFFFF"
    t.string "logo_header"
    t.string "logo_footer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_media", force: :cascade do |t|
    t.string "facebook"
    t.string "instagram"
    t.string "whatsapp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_menus", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.boolean "new_page"
    t.bigint "menu_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_sub_menus_on_menu_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.datetime "date_publish"
    t.string "url"
    t.string "description"
    t.string "slug"
    t.boolean "featured", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "albums", "album_categories"
  add_foreign_key "albums_pages", "albums"
  add_foreign_key "albums_pages", "pages"
  add_foreign_key "archive_completes", "bid_completes"
  add_foreign_key "archive_contract_ends", "contract_ends"
  add_foreign_key "archive_contracts", "contracts"
  add_foreign_key "archive_notices", "bid_notices"
  add_foreign_key "archive_results", "bid_results"
  add_foreign_key "archive_secretaries", "secretaries"
  add_foreign_key "banners", "format_ads"
  add_foreign_key "bid_completes", "bidding_categories"
  add_foreign_key "bid_notices", "bidding_categories"
  add_foreign_key "bid_results", "bidding_categories"
  add_foreign_key "contract_ends", "bidding_categories"
  add_foreign_key "contracts", "bidding_categories"
  add_foreign_key "font_primaries", "category_fonts"
  add_foreign_key "font_secondaries", "category_fonts"
  add_foreign_key "laws", "law_categories"
  add_foreign_key "pages", "albums"
  add_foreign_key "permissions", "users"
  add_foreign_key "photos", "albums"
  add_foreign_key "post_images", "posts"
  add_foreign_key "post_views", "posts"
  add_foreign_key "posts", "post_categories"
  add_foreign_key "quick_access_views", "quick_accesses"
  add_foreign_key "quick_accesses", "category_quick_accesses"
  add_foreign_key "separate_file_archives", "separate_files"
  add_foreign_key "sub_menus", "menus"
end
