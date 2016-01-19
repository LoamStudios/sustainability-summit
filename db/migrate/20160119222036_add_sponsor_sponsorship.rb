class AddSponsorSponsorship < ActiveRecord::Migration
  def change
    create_table :sponsors_sponsorships, id: false do |t|
        t.belongs_to :sponsors, index: true
        t.belongs_to :sponsorships, index: true
    end
  end
end
