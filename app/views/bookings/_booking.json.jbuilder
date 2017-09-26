json.extract! booking, :id, :details, :name, :email, :phone, :company, :event_type, :date, :bar_type, :add_ons, :address, :guests, :start_time, :permit, :additional, :details, :created_at, :updated_at
json.url booking_url(booking, format: :json)
