class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  validates :departure_airport, presence: true
  validates :arrival_airport, presence: true

  def self.search(params)
    flights = Flight.where("departure_airport_id LIKE ? or arrival_airport_id LIKE ? or flight_duration LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?

    flights
  end

  def flight_date_formatted
    flight_date.strftime("%m/%d/%Y")
  end
end
