# == Schema Information
#
# Table name: sponsorships
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  name       :string
#  priority   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sponsorship < ActiveRecord::Base
    belongs_to :event
    has_and_belongs_to_many :sponsors
end
