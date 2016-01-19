class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :last_name
      t.string :first_name
      t.string :organization
      t.string :title
      t.string :organization2
      t.string :title2
      t.text :description

      t.timestamps null: false
    end
  end
end
