ActiveRecord::Schema[7.2].define(version: 2024_08_26_185730) do
  create_table "airports", force: :cascade do |t|
    t.string "airport_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
