# == Schema Information
#
# Table name: timeslots
#
#  id         :integer          not null, primary key
#  start      :datetime
#  end        :datetime
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Timeslot < ActiveRecord::Base
    belongs_to :event
    has_many :sessions
end
