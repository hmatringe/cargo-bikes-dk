class BikesController < ApplicationController
  before_action :set_bike, only: [:show]

  # "bike"=>{"address"=>"Ahornsgade 15, København N, Denmark", "booking"=>{"start_date"=>"2017-05-24", "end_date"=>"2017-05-26"}}

  def index
    if params[:bike]

      if !params[:bike][:address].blank?
        @bikes = Bike.near(params[:bike][:address], 2)
      else
        @bikes = Bike.all # user did not fill in address field
      end

      start_date = Date.parse(params[:bike][:booking][:start_date])
      end_date = Date.parse(params[:bike][:booking][:end_date])

      if !start_date.blank? && !end_date.blank?
        date_range = (start_date..end_date)
        @bikes = @bikes.reject { |b| !b.available_on_date_range?(date_range) }
      end

    else # fallback if someone puts /bikes in the browser
      @bikes = Bike.all
    end
    # raise
  end

  def show
    @booking = Booking.new
    @mapped_bike = Gmaps4rails.build_markers(@bike) do |bike, marker|
      marker.lat bike.latitude
      marker.lng bike.longitude
    end
    # raise
  end

  def new
    @bike = Bike.new
    # @brands = Brand.all
    @brand = Brand.new
    # @brand_models = BrandModel.all
    # raise
  end

  def create
    # raise
    @bike = Bike.new(bike_params)
    @bike.daily_price_in_cents = @bike.daily_price_in_cents * 100
    if @bike.save
      redirect_to @bike
    else
      render :new
    end
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:id, :color, :electric, :daily_price_in_cents, :description, :address, :user_id, :brand_model_id, :photo)
  end

end
