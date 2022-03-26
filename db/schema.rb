ActiveRecord::Schema.define(version: 2022_03_25_194959) do

  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.text "description"
    t.string "species"
    t.text "owner_story"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "user_pets", force: :cascade do |t|
    t.text "application"
    t.bigint "user_id"
    t.bigint "pet_id"
    t.index ["pet_id"], name: "index_user_pets_on_pet_id"
    t.index ["user_id"], name: "index_user_pets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pets", "users"
  add_foreign_key "user_pets", "pets"
  add_foreign_key "user_pets", "users"
end
