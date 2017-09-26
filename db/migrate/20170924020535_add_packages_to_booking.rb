class AddPackagesToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :beer, :string
    add_column :bookings, :wine, :string
    add_column :bookings, :spirit, :string
    add_column :bookings, :cocktail, :string
  end
end
