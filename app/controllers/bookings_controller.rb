class BookingsController < ApplicationController
  before_action :set_booking, only: [:update]

  def create
    @bike = Bike.find(params[:bike_id])
    if current_user.nil?
      flash[:alert] = "You must be signed in to create a booking!"
      redirect_to @bike
    else
      @booking = Booking.new
      @booking.start_date = DateTime.parse(params[:booking][:start_date])
      @booking.end_date = DateTime.parse(params[:booking][:end_date])
      @booking.status = "pending"
      @booking.user = current_user
      @booking.bike = @bike
      if @booking.save
        flash[:notice] = "Booking successfully created from #{@booking.start_date} to #{@booking.end_date}!"
        redirect_to @bike
      else
        render "bikes/show"
      end
    end
  end

  def update
    @booking.status = params[:status]
    # raise
    @booking.save
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

end

