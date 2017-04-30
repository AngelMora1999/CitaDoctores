class ClinicHasSpecialty < ApplicationRecord
  belongs_to :clinic
  belongs_to :specialty
end
