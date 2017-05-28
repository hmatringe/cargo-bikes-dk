class DashboardController < ApplicationController

  def index
    @bookings = Booking.where(user:current_user)
    @bikes = Bike.where(user:current_user)
    @booking_requests = Booking.where(bike:current_user.bikes)
  end

end
