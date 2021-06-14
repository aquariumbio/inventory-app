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

ActiveRecord::Schema.define(version: 2021_06_14_132454) do

  create_table "collection_items", force: :cascade do |t|
    t.integer "row", null: false
    t.integer "column", null: false
    t.integer "collection_id", null: false
    t.integer "single_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collection_id"], name: "index_collection_items_on_collection_id"
    t.index ["single_item_id"], name: "index_collection_items_on_single_item_id"
  end

  create_table "collection_types", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "rows", null: false
    t.integer "columns", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "collections", force: :cascade do |t|
    t.integer "collection_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collection_type_id"], name: "index_collections_on_collection_type_id"
  end

  create_table "container_types", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "max_quantity"
    t.integer "format_type_id", null: false
    t.string "format_type_type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string "quantity"
    t.string "location"
    t.integer "format_id", null: false
    t.string "format_type", null: false
    t.integer "container_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["container_type_id"], name: "index_containers_on_container_type_id"
  end

  create_table "physical_states", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sample_composition_types", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.text "recipe"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sample_compositions", force: :cascade do |t|
    t.text "quantity"
    t.integer "composite_sample_id", null: false
    t.integer "component_sample_id", null: false
    t.integer "sample_composition_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sample_composition_type_id"], name: "index_sample_compositions_on_sample_composition_type_id"
  end

  create_table "sample_types", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "sample_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sample_type_id"], name: "index_samples_on_sample_type_id"
  end

  create_table "single_item_types", force: :cascade do |t|
    t.integer "sample_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sample_type_id"], name: "index_single_item_types_on_sample_type_id"
  end

  create_table "single_item_types_physical_states", force: :cascade do |t|
    t.integer "single_item_type_id", null: false
    t.integer "physical_state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["physical_state_id"], name: "index_single_item_types_physical_states_on_physical_state_id"
    t.index ["single_item_type_id"], name: "index_single_item_types_physical_states_on_single_item_type_id"
  end

  create_table "single_items", force: :cascade do |t|
    t.integer "sample_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "identifier"
    t.index ["identifier"], name: "index_single_items_on_identifier", unique: true
    t.index ["sample_id"], name: "index_single_items_on_sample_id"
  end

  create_table "single_items_physical_states", force: :cascade do |t|
    t.integer "single_item_id", null: false
    t.integer "physical_state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["physical_state_id"], name: "index_single_items_physical_states_on_physical_state_id"
    t.index ["single_item_id"], name: "index_single_items_physical_states_on_single_item_id"
  end

  add_foreign_key "collection_items", "collections"
  add_foreign_key "collection_items", "single_items"
  add_foreign_key "collections", "collection_types"
  add_foreign_key "containers", "container_types"
  add_foreign_key "sample_compositions", "sample_composition_types"
  add_foreign_key "samples", "sample_types"
  add_foreign_key "single_item_types", "sample_types"
  add_foreign_key "single_item_types_physical_states", "physical_states"
  add_foreign_key "single_item_types_physical_states", "single_item_types"
  add_foreign_key "single_items", "samples"
  add_foreign_key "single_items_physical_states", "physical_states"
  add_foreign_key "single_items_physical_states", "single_items"
end
