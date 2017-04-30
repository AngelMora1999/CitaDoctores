class CreateQualities < ActiveRecord::Migration[5.0]
  def change
    create_table :qualities do |t|
      t.string :title
      t.text :description
      t.text :icon
      t.string :color

      t.timestamps
    end
  end
end
