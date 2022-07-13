class CreateCongressionalMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :congressional_members do |t|
      t.string :name
      t.text :bio
      t.integer :districtNUM
      t.string :political_party
      t.string :years_in_office
      t.string :image_url

      t.timestamps
    end
  end
end
