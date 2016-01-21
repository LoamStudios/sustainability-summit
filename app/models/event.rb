# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
    has_many :teams
    has_many :timeslots
    has_many :sponsorships, -> { order priority: :asc}

    validates :name, uniqueness: true

    def self.with_program
        joins(:timeslots).group(:id).order(name: :desc).having("COUNT(timeslots.id) > 0")
    end
end
