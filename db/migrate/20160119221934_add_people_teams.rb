class AddPeopleTeams < ActiveRecord::Migration
  def change
    create_table :people_teams, id: false do |t|
        t.belongs_to :people, index: true
        t.belongs_to :teams, index: true
    end
  end
end
