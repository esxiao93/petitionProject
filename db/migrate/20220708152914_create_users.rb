class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.integer :district
      t.boolean :admin, default: false
      t.belongs_to :congressional_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
