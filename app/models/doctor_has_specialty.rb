# == Schema Information
#
# Table name: doctor_has_specialties
#
#  id           :integer          not null, primary key
#  doctor_id    :integer
#  specialty_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class DoctorHasSpecialty < ApplicationRecord
  #Conexiones
  belongs_to :doctor
  belongs_to :specialty
end
