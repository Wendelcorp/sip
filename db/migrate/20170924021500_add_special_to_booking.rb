class AddSpecialToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :glassware, :boolean
    add_column :bookings, :bar_rental, :boolean
    add_column :bookings, :virgin, :boolean
    add_column :bookings, :other, :text
    add_column :bookings, :passed_drinks, :boolean
    add_column :bookings, :beer_corkage, :boolean
    add_column :bookings, :wine_corkage, :boolean
    add_column :bookings, :spirit_corkage, :boolean
    add_column :bookings, :catering, :boolean
    add_column :bookings, :delivery_details, :text
  end
end
