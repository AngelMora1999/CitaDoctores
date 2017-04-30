# == Schema Information
#
# Table name: clinics
#
#  id                :integer          not null, primary key
#  logo_file_name    :string
#  logo_content_type :string
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#  name              :string
#  description       :text
#  founded_since     :datetime
#  state             :string
#  city              :string
#  address           :text
#  visit_count       :integer          default("0")
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ClinicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
