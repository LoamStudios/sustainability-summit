class AddPeopleSessions < ActiveRecord::Migration
  def change
    create_table :people_sessions, id: false do |t|
        t.belongs_to :person, index: true
        t.belongs_to :session, index: true
    end
  end
end
