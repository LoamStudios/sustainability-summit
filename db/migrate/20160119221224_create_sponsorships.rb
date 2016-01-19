class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :event_id
      t.string :name
      t.integer :priority

      t.timestamps null: false
    end
  end
end
