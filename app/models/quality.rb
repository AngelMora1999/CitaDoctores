# == Schema Information
#
# Table name: qualities
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  icon        :text
#  color       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Quality < ApplicationRecord
  #Conexiones
  has_many :clinic_has_qualities
  has_many :clinics, through: :clinic_has_qualities
  has_many :consulting_room_has_qualities
  has_many :consulting_rooms, through: :consulting_room_has_qualities
end
