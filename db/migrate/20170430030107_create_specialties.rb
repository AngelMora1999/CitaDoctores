class CreateSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      t.string :title
      t.text :description
      t.attachment :logo
      t.attachment :cover
      t.text :icon
      t.string :color
      t.integer :visit_count, default: 0

      t.timestamps
    end
  end
end
