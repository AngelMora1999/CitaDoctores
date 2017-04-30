# == Schema Information
#
# Table name: clinic_has_qualities
#
#  id         :integer          not null, primary key
#  clinic_id  :integer
#  quality_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ClinicHasQuality < ApplicationRecord
  #Conexiones
  belongs_to :clinic
  belongs_to :quality
end
