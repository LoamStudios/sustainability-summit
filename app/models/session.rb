# == Schema Information
#
# Table name: sessions
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  location    :string
#  timeslot_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Session < ActiveRecord::Base
    has_and_belongs_to_many :people, -> { order last_name: :asc }
    belongs_to :timeslot

    def event_name
        timeslot.event.name
    end
end
