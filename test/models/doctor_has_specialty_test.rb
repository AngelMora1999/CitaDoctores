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

require 'test_helper'

class DoctorHasSpecialtyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
