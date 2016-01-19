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

require 'test_helper'

class SponsorshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
