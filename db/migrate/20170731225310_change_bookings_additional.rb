class ChangeBookingsAdditional < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :additional, :text
  end
end
