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

class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  #Conexiones
  belongs_to :clinic
  belongs_to :consulting_room
  has_many :doctor_has_specialties
  has_many :specialties, through: :doctor_has_specialties
end
