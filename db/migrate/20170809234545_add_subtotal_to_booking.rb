class AddSubtotalToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :subtotal, :integer
  end
end
