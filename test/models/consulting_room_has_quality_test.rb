# == Schema Information
#
# Table name: consulting_room_has_qualities
#
#  id                 :integer          not null, primary key
#  consulting_room_id :integer
#  quality_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ConsultingRoomHasQualityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
