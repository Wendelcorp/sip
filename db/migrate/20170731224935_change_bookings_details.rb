class ChangeBookingsDetails < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :details, :text
  end
end
