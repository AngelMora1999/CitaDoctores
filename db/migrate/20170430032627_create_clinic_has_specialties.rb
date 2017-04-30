class CreateClinicHasSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :clinic_has_specialties do |t|
      t.references :clinic, foreign_key: true
      t.references :specialty, foreign_key: true

      t.timestamps
    end
  end
end
