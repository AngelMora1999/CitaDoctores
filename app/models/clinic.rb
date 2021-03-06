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

class Clinic < ApplicationRecord
  #Conexiones
  belongs_to :user
  has_many :doctors
  has_many :clinic_has_specialties
  has_many :specialties, through: :clinic_has_specialties
  has_many :clinic_has_qualities
  has_many :qualities, through: :clinic_has_qualities
end
