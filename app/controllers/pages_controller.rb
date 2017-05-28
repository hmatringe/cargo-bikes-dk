class PagesController < ApplicationController
  def home
     @bikes = Bike.last(3)
     @bike = Bike.new
  end
end
