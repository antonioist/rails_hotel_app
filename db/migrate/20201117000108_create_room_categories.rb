class CreateRoomCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :room_categories do |t|
      t.string :category
      t.integer :momento
      t.integer :noche
      t.integer :hora_extra
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
