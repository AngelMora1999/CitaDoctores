class CreateConsultingRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :consulting_rooms do |t|
      t.attachment :logo
      t.string :name
      t.text :description
      t.datetime :founded_since
      t.string :state
      t.string :city
      t.text :address
      t.integer :visit_count, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
