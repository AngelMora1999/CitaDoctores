# == Schema Information
#
# Table name: doctors
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  identification_card    :string
#  abbreviation           :string
#  first_name             :string
#  second_name            :string
#  surname                :string
#  second_surname         :string
#  birth_date             :datetime
#  doctor_since           :datetime
#  visit_count            :integer          default("0")
#  status                 :string
#  notion                 :string
#  clinic_id              :integer
#  consulting_room_id     :integer
#  state                  :string
#  city                   :string
#  address                :string
#  phone                  :string
#  cell_phone             :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
