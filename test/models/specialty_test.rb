# == Schema Information
#
# Table name: specialties
#
#  id                 :integer          not null, primary key
#  title              :string
#  description        :text
#  logo_file_name     :string
#  logo_content_type  :string
#  logo_file_size     :integer
#  logo_updated_at    :datetime
#  cover_file_name    :string
#  cover_content_type :string
#  cover_file_size    :integer
#  cover_updated_at   :datetime
#  icon               :text
#  color              :string
#  visit_count        :integer          default("0")
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class SpecialtyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
