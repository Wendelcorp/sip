class ChangeDateInBookings < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :start_time, 'integer USING CAST(start_time AS integer)'
  end
end
