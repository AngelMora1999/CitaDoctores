class CreateConsultingRoomHasQualities < ActiveRecord::Migration[5.0]
  def change
    create_table :consulting_room_has_qualities do |t|
      t.references :consulting_room, foreign_key: true
      t.references :quality, foreign_key: true

      t.timestamps
    end
  end
end
