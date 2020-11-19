class AddColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :fee, foreign_key: true
    add_column :bookings, :time_start, :time
    add_column :bookings, :time_end, :time
  end
end
