class AddSponsorSponsorship < ActiveRecord::Migration
  def change
    create_table :sponsors_sponsorships, id: false do |t|
        t.belongs_to :sponsor, index: true
        t.belongs_to :sponsorship, index: true
    end
  end
end
