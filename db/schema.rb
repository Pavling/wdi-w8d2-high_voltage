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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140202165057) do

  create_table "abilities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories_recipes", :force => true do |t|
    t.integer "category_id"
    t.integer "recipe_id"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ingredients_recipes", :force => true do |t|
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.string   "quantity"
    t.datetime "updated_at",    :null => false
    t.datetime "created_at",    :null => false
  end

  add_index "ingredients_recipes", ["ingredient_id"], :name => "index_ingredients_recipes_on_ingredient_id"
  add_index "ingredients_recipes", ["recipe_id"], :name => "index_ingredients_recipes_on_recipe_id"

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "instructions"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "category_id"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
