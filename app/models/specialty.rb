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

class Specialty < ApplicationRecord
  #Conexiones
  has_many :doctor_has_specialties
  has_many :doctors, through: :doctor_has_specialties
  has_many :clinic_has_specialties
  has_many :clinics, through: :clinic_has_specialties
end
