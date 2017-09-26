class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def after_sign_up_path_for(resource)
      new_booking_path
    end
end
