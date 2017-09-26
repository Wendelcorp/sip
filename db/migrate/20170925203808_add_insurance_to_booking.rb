class AddInsuranceToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :insurance, :boolean
  end
end
