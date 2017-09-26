class AddCouponCodeToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :coupon_code, :string
  end
end
