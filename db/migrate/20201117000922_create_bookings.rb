class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :client_name
      t.integer :client_rut
      t.references :room, foreign_key: true
      t.references :worker, foreign_key: true
      t.references :room_category, foreign_key: true

      t.timestamps
    end
  end
end
