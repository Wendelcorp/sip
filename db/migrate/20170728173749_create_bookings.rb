class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :details
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :event_type
      t.datetime :date
      t.string :bar_type
      t.string :add_ons
      t.string :address
      t.string :guests
      t.time :start_time
      t.boolean :permit
      t.string :additional
      t.string :details

      t.timestamps
    end
  end
end
