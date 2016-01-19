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

require 'test_helper'

class TimeslotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
