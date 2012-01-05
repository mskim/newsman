class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.date :date
      t.string :name
      t.integer :issue_number
      t.integer :publication_id

      t.timestamps
    end
  end
end
