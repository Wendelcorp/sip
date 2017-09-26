class AddHoursToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :hours, :integer
  end
end
