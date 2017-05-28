class Bike < ApplicationRecord
  belongs_to :brand_model
  belongs_to :user
  has_many :bookings
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def available_on_date_range?(range)
    unless bookings.empty?
      return !self.booked_dates.any? { |r| r.overlaps?(range) }
    end
    true
  end

  def booked_dates
    unless bookings.empty?
      bookings.select { |b| b.status == "accepted" }.map { |b| (b.start_date..b.end_date) }
    end
  end

end
