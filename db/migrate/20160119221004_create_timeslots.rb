class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.datetime :start
      t.datetime :end
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
