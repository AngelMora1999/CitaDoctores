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

require 'test_helper'

class ClinicHasQualityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
