class AddPeopleTeams < ActiveRecord::Migration
  def change
    create_table :people_teams, id: false do |t|
        t.belongs_to :person, index: true
        t.belongs_to :team, index: true
    end
  end
end
