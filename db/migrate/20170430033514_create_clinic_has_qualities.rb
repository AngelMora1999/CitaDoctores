class CreateClinicHasQualities < ActiveRecord::Migration[5.0]
  def change
    create_table :clinic_has_qualities do |t|
      t.references :clinic, foreign_key: true
      t.references :quality, foreign_key: true

      t.timestamps
    end
  end
end
