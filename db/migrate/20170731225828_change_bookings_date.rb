class ChangeBookingsDate < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :date, :date
  end
end
