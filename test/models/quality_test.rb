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

require 'test_helper'

class QualityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
