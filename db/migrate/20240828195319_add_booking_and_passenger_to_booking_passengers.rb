class AddBookingAndPassengerToBookingPassengers < ActiveRecord::Migration[7.2]
  def change
    add_reference :booking_passengers, :booking, null: false, foreign_key: true
    add_reference :booking_passengers, :passenger, null: false, foreign_key: true
  end
end
