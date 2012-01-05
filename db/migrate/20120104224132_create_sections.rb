class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :section_name
      t.integer :columns
      t.integer :gutter
      t.integer :grid_height
      t.boolean :direction
      t.string :design_template
      t.integer :issue_id

      t.timestamps
    end
  end
end
