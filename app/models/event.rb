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

    def self.with_programs
        joins(:timeslots).group(:id).order(name: :desc).having("COUNT(timeslots.id) > 0")
    end

    def self.with_teams
        joins(:teams).group(:id).order(name: :desc).having("COUNT(teams.id) > 0")
    end

    def self.with_sponsorships
        joins(:sponsorships).group(:id).order(name: :desc).having("COUNT(sponsorships.id) > 0")
    end
end
