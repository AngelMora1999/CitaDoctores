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

class ConsultingRoomHasQuality < ApplicationRecord
  belongs_to :consulting_room
  belongs_to :quality
end
