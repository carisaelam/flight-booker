class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  has_many :bookings
  has_many :passengers, through: :bookings

  validates :departure_airport, presence: true
  validates :arrival_airport, presence: true
end
