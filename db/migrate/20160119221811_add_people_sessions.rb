class AddPeopleSessions < ActiveRecord::Migration
  def change
    create_table :people_sessions, id: false do |t|
        t.belongs_to :people, index: true
        t.belongs_to :sessions, index: true
    end
  end
end
