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

ActiveRecord::Schema.define(:version => 20120104224132) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "summary"
    t.text     "text"
    t.text     "text_for_print"
    t.integer  "columns"
    t.integer  "x_position"
    t.integer  "y_position"
    t.integer  "height_in_grid"
    t.string   "status"
    t.string   "kind"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", :force => true do |t|
    t.date     "date"
    t.string   "name"
    t.integer  "issue_number"
    t.integer  "publication_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", :force => true do |t|
    t.string   "name"
    t.string   "size"
    t.string   "frequency"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "section_name"
    t.integer  "columns"
    t.integer  "gutter"
    t.integer  "grid_height"
    t.boolean  "direction"
    t.string   "design_template"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
