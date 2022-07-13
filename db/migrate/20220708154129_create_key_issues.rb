class CreateKeyIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :key_issues do |t|
      t.string :title
      t.text :description
      t.belongs_to :congressional_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
