require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { add_ons: @booking.add_ons, additional: @booking.additional, address: @booking.address, bar_type: @booking.bar_type, company: @booking.company, date: @booking.date, details: @booking.details, details: @booking.details, email: @booking.email, event_type: @booking.event_type, guests: @booking.guests, name: @booking.name, permit: @booking.permit, phone: @booking.phone, start_time: @booking.start_time } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { add_ons: @booking.add_ons, additional: @booking.additional, address: @booking.address, bar_type: @booking.bar_type, company: @booking.company, date: @booking.date, details: @booking.details, details: @booking.details, email: @booking.email, event_type: @booking.event_type, guests: @booking.guests, name: @booking.name, permit: @booking.permit, phone: @booking.phone, start_time: @booking.start_time } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
