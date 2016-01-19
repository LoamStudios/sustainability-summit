# == Schema Information
#
# Table name: sponsors
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sponsor < ActiveRecord::Base
    has_and_belongs_to_many :sponsorships
end
