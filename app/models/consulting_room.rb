# == Schema Information
#
# Table name: consulting_rooms
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

class ConsultingRoom < ApplicationRecord
  #Conexiones
  belongs_to :user
  has_one :doctor
  has_many :consulting_room_has_qualities
  has_many :qualities, through: :consulting_room_has_qualities
end
