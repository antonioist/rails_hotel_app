class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.references :room_category, foreign_key: true
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
