class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :summary
      t.text :text
      t.text :text_for_print
      t.integer :columns
      t.integer :x_position
      t.integer :y_position
      t.integer :height_in_grid
      t.string :status
      t.string :kind
      t.integer :section_id

      t.timestamps
    end
  end
end
