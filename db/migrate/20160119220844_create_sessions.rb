class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :timeslot_id

      t.timestamps null: false
    end
  end
end
